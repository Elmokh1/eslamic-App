import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentMode = ThemeMode.dark;
  String currentLocal ='ar';

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
  String getmainbacksebhalogo() {
    return currentMode == ThemeMode.dark
        ? "images/body_sebha_dark.png"
        : "images/body_sebha_logo.png";
  }
  String getmainbacksebhahead() {
    return currentMode == ThemeMode.dark
        ? "images/head_sebha_dark.png"
        : "images/head_sebha_logo.png";
  }
  void ChangeLanguage(String newLang){
    if(currentLocal==newLang)return;
    currentLocal=newLang;
    notifyListeners();

  }
}


