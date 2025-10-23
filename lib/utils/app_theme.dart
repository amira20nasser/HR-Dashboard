import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lighBackgroundColor,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
