import 'package:core_module/core_module.dart';
import 'package:core_module/feature/controller/app_controller.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  /// inserir o materialApp -
  @override
  Widget build(BuildContext context) {
    // final weather = WeatherModel.fromMap(weatherJson); // TODO: erro MAP
    // getHttp();

    // Modular.setArguments(arguments); ///  pode mandar um argumento inicial p/ a rota inicial

    /// se precisar adicionar algun tipo de navegacao utilizar o Modular.set

    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isLight, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeLight,
          // darkTheme: AppTheme.themeDark,
          // themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
          routerDelegate: Modular.routerDelegate,
          routeInformationParser: Modular.routeInformationParser,
        );
      },
    );
  }
}
