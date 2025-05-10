import 'package:flutter/material.dart';

class AppTextStyle {
  static const String fontFamily = 'Lato';

  // Headings
  static TextStyle h1(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 56 / 48,
    color: color,
  );

  static TextStyle h2(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 48 / 40,
    color: color,
  );

  static TextStyle h3(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 40 / 36,
    color: color,
  );

  static TextStyle h4(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 40 / 32,
    color: color,
  );

  static TextStyle h5(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 32 / 24,
    color: color,
  );

  static TextStyle h6(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 24 / 20,
    color: color,
  );

  // Body
  static TextStyle title(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 24 / 18,
    color: color,
  );

  static TextStyle paragraphBook(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 18 / 14,
    color: color,
  );

  static TextStyle paragraphMedium(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 18 / 14,
    color: color,
  );

  static TextStyle alternative(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 16 / 12,
    color: color,
  );

  static TextStyle chip(Color color) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    height: 16 / 10,
    color: color,
  );
}
