import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  String language = "ar";


  void changeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}
