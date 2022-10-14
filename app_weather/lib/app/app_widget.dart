import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final weather = WeatherModel.fromMap(weatherJson); // TODO: erro MAP
    // getHttp();

    // Modular.setArguments(arguments); ///  pode mandar um argumento inicial p/ a rota inicial

    /// se precisar adicionar algun tipo de navegacao utilizar o Modular.set

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // title: weather.description,
      theme: AppTheme.themeLight,
      themeMode: ThemeMode.light,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
