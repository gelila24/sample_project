import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //colors
  static const Color primaryColor = Colors.black;
  static const Color secondaryColor = Color(0xFFD2D2D2);

//text styles
  static TextStyle mainHeader() => GoogleFonts.rubik(
        fontSize: 22,
        color: primaryColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle mainHeader2() => GoogleFonts.rubik(
        fontSize: 14,
        color: primaryColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle title() => GoogleFonts.rubik(
        fontSize: 12,
        color: secondaryColor,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
      );
  static TextStyle hintText() => GoogleFonts.rubik(
        color: secondaryColor,
        fontWeight: FontWeight.w500,
      );
  //box decorations
  static BoxDecoration primaryButtonDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: secondaryColor,
      );
  static ThemeData themeData =
      ThemeData(scaffoldBackgroundColor: secondaryColor);
}
