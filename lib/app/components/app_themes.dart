import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData apptheme() {
    return ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(brightness: Brightness.light, seedColor: const Color(0xFF1BD0B8)));
  }
}
