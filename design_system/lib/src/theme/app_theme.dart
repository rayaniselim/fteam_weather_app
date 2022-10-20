import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static final themeLight = ThemeData(
    primaryColor: AppColors.colorsAppBar,
    scaffoldBackgroundColor: AppColors.colorsBackground,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    cardColor: AppColors.colorsBackground,
    // hintColor: AppColors.colorsHintText,
    focusColor: AppColors.primaryColor,
    errorColor: AppColors.colorsError,
    backgroundColor: AppColors.colorsBackground,
  );

  static final themeDark = ThemeData(
    primaryColor: AppColors.colorsAppBar,
    scaffoldBackgroundColor: AppColors.colorsBackground,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: Colors.black),
    cardColor: AppColors.colorsBackground, // nao achei o card
    // hintColor: AppColors.colorsHintText,
    focusColor: AppColors.primaryColor,
    errorColor: AppColors.colorsError,
    backgroundColor: AppColors.colorsBackground,
  );
}
