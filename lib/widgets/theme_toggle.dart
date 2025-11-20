import 'package:flutter/material.dart';

class ThemeToggleRow extends StatelessWidget {
  final ThemeMode currentMode;
  final ValueChanged<ThemeMode> onChanged;
  const ThemeToggleRow(
      {super.key, required this.currentMode, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          tooltip: 'Light',
          onPressed: () => onChanged(ThemeMode.light),
          icon: Icon(Icons.light_mode,
              color:
                  currentMode == ThemeMode.light ? Colors.orange : Colors.grey),
        ),
        IconButton(
          tooltip: 'System',
          onPressed: () => onChanged(ThemeMode.system),
          icon: Icon(Icons.settings_suggest,
              color: currentMode == ThemeMode.system
                  ? Colors.orange
                  : Colors.grey),
        ),
        IconButton(
          tooltip: 'Dark',
          onPressed: () => onChanged(ThemeMode.dark),
          icon: Icon(Icons.dark_mode,
              color:
                  currentMode == ThemeMode.dark ? Colors.orange : Colors.grey),
        ),
      ],
    );
  }
}
