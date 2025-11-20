import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF1F4E79),
  scaffoldBackgroundColor: const Color(0xFF0F1724),
  cardColor: const Color(0xFF0E1622),
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.orange, brightness: Brightness.dark),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade700),
  ),
);
