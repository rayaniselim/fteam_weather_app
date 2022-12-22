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
    Bind.factory<WeatherBloc>(
      (i) => WeatherBloc(
        weatherRepo: i(),
      ),
    ),
    Bind.factory<WeatherRepository>(
      (i) => WeatherRepository(
        datasource: i(),
      ),
    ),
    Bind.factory<WeatherDatasource>(
      (i) => WeatherDatasource(
        client: i(),
      ),
    ),
    Bind.factory<IHttpClient>(
      (i) => DioHttpClient(
        i(),
      ),
    ),
    Bind.factory<Dio>((_) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
