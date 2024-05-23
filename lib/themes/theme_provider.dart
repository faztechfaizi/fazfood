import 'package:fazfood/themes/dark_mode.dart';
import 'package:fazfood/themes/light_mode.dart';
import 'package:flutter/material.dart';


/// Class that holds the current theme data and notifies its listeners when the
/// theme changes.
class ThemeProvider with ChangeNotifier {
  /// The current theme data.
  ThemeData _themeData = lightMode;

  /// Getter for the current theme data.
  ThemeData get themeData => _themeData;

  /// Getter to know if the current theme is dark mode.
  bool get isDarkMode => _themeData == darkMode;

  /// Setter for the current theme data.
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  /// Toggles the current theme data between light mode and dark mode.
  void toggleTheme() {
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
