import 'package:flutter/material.dart';

import '../../design_system.dart';

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
    scaffoldBackgroundColor: LightColors.primaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: LightColors.primaryColor),
    errorColor: LightColors.colorsError,
    backgroundColor: LightColors.primaryColor,
    hintColor: LightColors.colorsTextGrey,
    focusColor: LightColors.primaryColor,
    primaryColor: LightColors.primaryColor,
    indicatorColor: LightColors.colorsBlack,
  );
}
