import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

// class AppTheme {
//   static final themeLight = ThemeData(
//     primaryColor: AppColors.colorsAppBar,
//     cardColor: AppColors.colorsBackground,
//   );

//   static final themeDark = ThemeData(
//     primaryColor: AppColors.colorsAppBar,
//     scaffoldBackgroundColor: AppColors.colorsBackground,
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     iconTheme: const IconThemeData(color: Colors.black),
//     cardColor: AppColors.colorsBackground, // nao achei o card
//     // hintColor: AppColors.colorsHintText,
//     focusColor: AppColors.primaryColor,
//     errorColor: AppColors.colorsError,
//     backgroundColor: AppColors.colorsBackground,
//   );
// }
class AppTheme {
  static ThemeData themeLight = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        headline2: GoogleFonts.poppins(
          color: AppColors.primaryColor,
          fontSize: 120,
        ),
        subtitle1: GoogleFonts.poppins(
          color: AppColors.primaryColor,
        ),
        caption: GoogleFonts.poppins(
          color: AppColors.primaryColor,
        ),
        overline: GoogleFonts.poppins(
          color: AppColors.colorsTextGrey,
        ),
        headline5: GoogleFonts.poppins(color: AppColors.colorsTextBlack),
        headline3: GoogleFonts.poppins(color: AppColors.primaryColor)),
    scaffoldBackgroundColor: AppColors.colorsBackground,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    errorColor: AppColors.colorsError,
    // backgroundColor: AppColors.colorsBackground,
    backgroundColor: Colors.red, // ??????
    hintColor: AppColors.colorsTextGrey,
    focusColor: AppColors.primaryColor,

    primaryColor: AppColors.primaryColor,
  );
}

class LightTextTheme extends TextTheme {
  static TextTheme head2 = TextTheme(
    headline2: GoogleFonts.poppins(
      color: AppColors.primaryColor,
      fontSize: 120,
    ),
  );
  static TextTheme head3 = TextTheme(
    headline3: GoogleFonts.poppins(
      color: AppColors.primaryColor,
    ),
  );

  static TextTheme head5 = TextTheme(
    subtitle1: GoogleFonts.poppins(
      color: AppColors.colorsTextBlack,
    ),
  );
  static TextTheme subt1 = TextTheme(
    subtitle1: GoogleFonts.poppins(
      color: AppColors.primaryColor,
    ),
  );

  static TextTheme capt = TextTheme(
    caption: GoogleFonts.poppins(
      color: AppColors.primaryColor,
    ),
  );

  static TextTheme overl = TextTheme(
    overline: GoogleFonts.poppins(
      color: AppColors.colorsTextGrey,
    ),
  );
}
