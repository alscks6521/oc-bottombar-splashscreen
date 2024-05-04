import 'package:flutter/material.dart';

class MyColors {
  static const int _primaryColorValue = 0xFF276AEE;
  static const primaryColor = Color(_primaryColorValue);

  static const MaterialColor primaryMaterialColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_primaryColorValue), // 주 색상
      600: Color(0xFF007BFF), // Loading
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
}
