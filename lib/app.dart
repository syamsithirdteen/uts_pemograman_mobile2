import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // default theme mode: system
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOMIRX Clone',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      home: HomePage(
        onThemeChanged: _toggleTheme,
        currentMode: _themeMode,
      ),
    );
  }
}
