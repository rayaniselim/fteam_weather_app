import 'package:core_module/core_module.dart';

import 'modules/home/home_module.dart';

/* ESTE MODULO É GLOBAL(é a RAIZ) para todo o app
essa classe  existe APENAS para instanciar injecao de dependencia,
que é um padrao q obriga vc a desacoplar as coisas, 
(trabalhar de forma desacoplada)
 e fazer inversao de controle,
*/
class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<Dio>((_) => Dio()), // INVERSAO DE CONTROLE
    Bind.factory<IHttpClient>(
      (i) => DioHttpClient(i()),
    ), // INVERSAO DE CONTROLE

    Bind.factory<WeatherBloc>(
      (i) => WeatherBloc(
        weatherRepo: WeatherRepository(
          datasource: WeatherDatasource(
            client: i(),
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
