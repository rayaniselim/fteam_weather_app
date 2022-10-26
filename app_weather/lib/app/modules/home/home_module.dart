import 'package:core_module/core_module.dart';

import 'home_page.dart';
import 'home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
    //   ChildRoute(Modular.initialRoute,
    //       child: (_, args) => const SearchTextField()),
  ];
}
