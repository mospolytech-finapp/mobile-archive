import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData apptheme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light, seedColor: const Color(0xFF1BD0B8)));
  }
}
