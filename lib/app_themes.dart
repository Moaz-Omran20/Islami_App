import 'package:flutter/material.dart';

class AppThemes {
  static const primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: primaryColor),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
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
  static ThemeData darkTheme = ThemeData();
}
