import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.dark;

  void changeTheme(ThemeMode newMode) {
    if (newMode == currentMode) return;
    currentMode = newMode;
    notifyListeners();
  }

  bool isDark() {
    return currentMode == ThemeMode.dark;
  }

  String getmainbackGround() {
    return currentMode == ThemeMode.dark
        ? "images/dark_bg.png"
        : "images/default_bg.png";
  }
}

// import 'package:flutter/material.dart';
//
// class SettingsProvider extends ChangeNotifier {
//   ThemeMode currentTheme = ThemeMode.dark;
//
//
//   void changeTheme(ThemeMode newMode) {
//     if (newMode == currentTheme) return;
//     currentTheme = newMode;
//     notifyListeners();
//   }
//
//   bool isDark() {
//     return currentTheme == ThemeMode.dark; // true OR false
//   }
//
//   String getMainBackGround() {
//     return currentTheme == ThemeMode.dark
//         ? "images/dark_bg.png"
//         : "images/default_bg.png";
//   }
//
// }
//
