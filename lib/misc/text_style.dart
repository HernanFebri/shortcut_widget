import 'package:flutter/material.dart';

class FontSizes {
  static const double extraSmallFontSize = 10.0;
  static const double smallFontSize = 12.0;
  static const double mediumFontSize = 16.0;
  static const double largeFontSize = 20.0;
  static const double extraLargeFontSize = 24.0;
}

class AppTextStyles {
  static TextStyle small = TextStyle(
    fontSize: FontSizes.smallFontSize,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: 'Inter',
  );

  static TextStyle medium = TextStyle(
    fontSize: FontSizes.mediumFontSize,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: 'Inter',
  );

  static TextStyle large = TextStyle(
    fontSize: FontSizes.largeFontSize,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: 'Inter',
  );

  static TextStyle extraLarge = TextStyle(
    fontSize: FontSizes.extraLargeFontSize,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: 'Inter',
  );

  AppTextStyles._();
}
