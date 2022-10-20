import 'package:core_module/core_module.dart';

import 'modules/home/home_module.dart';

/* ESTE MODULO É GLOBAL(é a RAIZ) para todo o app
essa classe  existe APENAS para instanciar injecao de dependencia,
que é um padrao q obriga vc a desacoplar as coisas, (trabalhar de forma desacoplada)
 e fazer inversao de controle,
*/
class AppModule extends Module {
  @override
  // binds = injecao de dependencia
  final List<Bind> binds = [
    // Bind.instance<String>('Rayani'),
    // Bind.lazySingleton((i) => Controller(i())), // INVERSAO DE CONTROLE
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}

// class Controller {
//   final String name;

//   Controller(
//     this.name,
//   );

//   printText() {
//     print('Name: $name controller');
//   }
// }
