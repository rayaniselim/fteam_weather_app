import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:core_module/core_module.dart';

class AppFontTheme {
  final double? sizeText;
  AppFontTheme(this.sizeText);

  TextStyle get appText => TextStyle(
        fontSize: sizeText!,
        fontWeight: FontWeight.w600,

        // color: AppColors.colorsTextLabel,
      );
  TextStyle get textWhite => GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: sizeText!,
          fontWeight: FontWeight.w300,
        ),
      );

  TextStyle get textBlack => GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.colorsTextBlack,
          fontSize: sizeText!,
        ),
      );

  TextStyle get textGrey => GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.colorsTextGrey,
          fontSize: sizeText!,
        ),
      );
}
