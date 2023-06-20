import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_drive/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/utils/app_const.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
  ).copyWith(
    scaffoldBackgroundColor: KScaffoldBackGroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 16.sp,
        color: AppColors.text2,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
