import 'package:flutter/material.dart';

class AppTextStyle {
  static const String fontFamily = 'Lato';

  // Headings
  static TextStyle h1 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 56 / 48,
  );

  static TextStyle h2 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 48 / 40,
  );

  static TextStyle h3 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 40 / 36,
  );

  static TextStyle h4 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 40 / 32,
  );

  static TextStyle h5 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 32 / 24,
  );

  static TextStyle h6 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 24 / 20,
  );

  // Body
  static TextStyle title = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 24 / 18,
  );

  static TextStyle paragraphBook = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 18 / 14,
  );

  static TextStyle paragraphMedium = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 18 / 14,
  );

  static TextStyle alternative = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 16 / 12,
  );

  static TextStyle chip = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 16 / 10,
  );
}
