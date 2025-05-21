import 'package:flutter/material.dart';

import '../../core.dart';

sealed class ThemeState {
  // default theme
  ThemeData get themeData => LightTheme.theme;
}

// Light Theme
class MemeLightThemeState extends ThemeState {
  static ThemeData get theme => lightTheme;
}

class ModernLightThemeState extends ThemeState {
  static ThemeData get theme => lightTheme;
}

// Dark Theme
class MemeDarkThemeState extends ThemeState {
  static ThemeData get theme => darkTheme;
}

class ModernDarkThemeState extends ThemeState {
  static ThemeData get theme => darkTheme;
}
