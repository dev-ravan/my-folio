import 'package:flutter/material.dart';
import 'package:my_folio/Core/Theme/theme_mode.dart';
import 'package:my_folio/Utils/exports.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _appTheme = darkMode;
  int _themeSelectedIndex = 1;

  get appTheme => _appTheme;
  get themeSelectedIndex => _themeSelectedIndex;

  void toggleDarkMode() {
    if (_appTheme == darkMode) {
      _appTheme = lightMode;
      _themeSelectedIndex = 0;
      notifyListeners();
    } else {
      _appTheme = darkMode;
      _themeSelectedIndex = 1;
      notifyListeners();
    }
  }
}
