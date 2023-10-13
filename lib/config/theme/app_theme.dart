import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.green,
];

class AppTheme {
  final int selectColors;

  AppTheme({this.selectColors = 0})
      : assert(selectColors >= 0 && selectColors <= 7 - 1,
            'Colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectColors],
       
        );
    
  }
}