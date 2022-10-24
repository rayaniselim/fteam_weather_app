import 'package:design_system/src/theme/app_font_theme.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

// class AppTheme {
//   static final lightTheme = ThemeData(
//     primaryColor: LightColors.colorsAppBar,
//     cardColor: LightColors.colorsBackground,
//   );

//   static final themeDark = ThemeData(
//     primaryColor: LightColors.colorsAppBar,
//     scaffoldBackgroundColor: LightColors.colorsBackground,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     iconTheme: const IconThemeData(color: Colors.black),
//     cardColor: LightColors.colorsBackground, // nao achei o card
//     // hintColor: LightColors.colorsHintText,
//     focusColor: LightColors.primaryColor,
//     errorColor: LightColors.colorsError,
//     backgroundColor: LightColors.colorsBackground,
//   );
// }
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline2: LightTextStyle.headline2,
      subtitle1: LightTextStyle.subtitle1,
      caption: LightTextStyle.caption,
      overline: LightTextStyle.overline,
      headline5: LightTextStyle.headline5,
      headline3: LightTextStyle.headline3,
    ),
    scaffoldBackgroundColor: LightColors.colorsBackground,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: LightColors.primaryColor),
    errorColor: LightColors.colorsError,
    // backgroundColor: LightColors.colorsBackground,
    backgroundColor: Colors.red, // ??????
    hintColor: LightColors.colorsTextGrey,
    focusColor: LightColors.primaryColor,
    primaryColor: LightColors.primaryColor,
  );
}
