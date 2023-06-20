import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/utils/app_const.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
  ).copyWith(
    scaffoldBackgroundColor: KScaffoldBackGroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
