import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'package:ayo_kesitu/utils/themes/themes.dart';

class AppThemes {
  static ThemeData light = FlexThemeData.light(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,

    // colors
    colorScheme: ColorTheme.light,
    dialogBackground: Colors.white,
    useMaterial3: true,
    swapLegacyOnMaterial3: false,

    // fonts
    fontFamily: GoogleFonts.robotoFlex().fontFamily,
    textTheme: baseStyle,
  );

  static ThemeData dark = FlexThemeData.dark(
    visualDensity: FlexColorScheme.comfortablePlatformDensity,

    // colors
    colorScheme: ColorTheme.dark,
    dialogBackground: Colors.black87,
    useMaterial3: true,
    swapLegacyOnMaterial3: false,

    // fonts
    fontFamily: GoogleFonts.robotoFlex().fontFamily,
    textTheme: baseStyle,
  );
}
