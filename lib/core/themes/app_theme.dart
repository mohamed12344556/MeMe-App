import 'package:flutter/material.dart';

import 'dark/dark_theme.dart';
import 'light/light_theme.dart';

class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}