import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static final themeLight = ThemeData(
    primaryColor: AppColors.colorsAppBar,
    scaffoldBackgroundColor: AppColors.colorsBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.colorsBackground,
      iconTheme: IconThemeData(color: AppColors.colorsIcon),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    cardColor: AppColors.colorsBackground,
    // hintColor: AppColors.colorsHintText,
    focusColor: AppColors.primaryColor,
    errorColor: AppColors.colorsError,
    backgroundColor: AppColors.colorsBackground,
  );
}
