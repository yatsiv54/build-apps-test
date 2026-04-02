import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  iconTheme: IconThemeData(color: Color(0xFF76ABAE)),
  useMaterial3: true,
  scaffoldBackgroundColor: Color(0xFF222831),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF31363F),
    iconTheme: IconThemeData(color: Color(0xFF76ABAE)),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 19,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontFamily: GoogleFonts.robotoMono().fontFamily,
    ),
  ),
);
