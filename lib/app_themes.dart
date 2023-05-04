import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static const primaryColor = Color(0xFFB7935F);
  static const primaryDarkColor = Color(0xFF141A2E);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: primaryColor),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:primaryColor),
      bodySmall: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.black),
      bodyMedium: GoogleFonts.amiri(
          fontSize: 25, fontWeight: FontWeight.bold, color: primaryColor),
      bodyLarge: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 18),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: primaryDarkColor),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.yellow),
      bodySmall: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white),
      bodyMedium: GoogleFonts.amiri(
          fontSize: 25, fontWeight: FontWeight.bold, color: primaryColor),
      bodyLarge: GoogleFonts.amiri(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.yellow),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.yellow,
      selectedLabelStyle: TextStyle(color: Colors.yellow, fontSize: 18),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}
