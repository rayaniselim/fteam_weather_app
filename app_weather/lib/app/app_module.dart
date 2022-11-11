import 'package:core_module/core_module.dart';

import 'modules/home/home_module.dart';
import 'package:core_module/feature/data/datasources/weather_datasource.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart';
import 'package:flutter/widgets.dart';

/* ESTE MODULO É GLOBAL(é a RAIZ) para todo o app
essa classe  existe APENAS para instanciar injecao de dependencia,
que é um padrao q obriga vc a desacoplar as coisas, (trabalhar de forma desacoplada)
 e fazer inversao de controle,
*/
class AppModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => Controller(i())), // INVERSAO DE CONTROLE
    Bind.singleton<TextEditingController>(
      (i) => TextEditingController(),
    ),
    Bind.singleton<WeatherBloc>(
      (i) => WeatherBloc(
        weatherRepo: WeatherRepository(
          datasource: WeatherDatasource(
            client: DioClientAdapter(),
          ),
        ),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
