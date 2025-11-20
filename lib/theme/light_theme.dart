import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF1F4E79),
  scaffoldBackgroundColor: const Color(0xFFF4F6FC),
  cardColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
  ),
);
