import 'package:flutter/material.dart';

import '../../design_system.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // textTheme: TextTheme(
    //   displayMedium: LightTextStyle.headline2,
    //   titleMedium: LightTextStyle.subtitle1,
    //   bodySmall: LightTextStyle.caption,
    //   labelSmall: LightTextStyle.overline,
    //   headlineSmall: LightTextStyle.headline5,
    //   displaySmall: LightTextStyle.headline3,
    // ),
    appBarTheme: const AppBarTheme(
      backgroundColor: LightColors.primaryColor,
    ),
    scaffoldBackgroundColor: LightColors.primaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: LightColors.primaryColor),
    hintColor: LightColors.colorsTextGrey,
    focusColor: LightColors.primaryColor,
    primaryColor: LightColors.primaryColor,
    indicatorColor: LightColors.colorsBlack,

    // colorScheme: ColorScheme(background: LightColors.primaryColor),

    // colorScheme: ColorScheme(error: LightColors.colorsError),
  );
}
