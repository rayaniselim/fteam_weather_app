import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:core_module/core_module.dart';

class AppFontTheme {
  static TextStyle appText = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,

    // color: AppColors.colorsTextLabel,
  );
  static TextStyle textCidade = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.colorsTextWhite,
      fontSize: 24,
      fontWeight: FontWeight.w300,
    ),
  );
  static TextStyle textTemperatura = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.colorsTextWhite,
      fontSize: 130,
      fontWeight: FontWeight.w300,
    ),
  );
  static TextStyle textIts = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.colorsTextWhite,
      fontSize: 20,
      fontWeight: FontWeight.w300,
    ),
  );

  static TextStyle textBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.colorsTextBlack,
    ),
  );
  static TextStyle textGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: AppColors.colorsTextGrey,
      fontSize: 12,
    ),
  );
}
