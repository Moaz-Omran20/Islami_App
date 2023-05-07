import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
