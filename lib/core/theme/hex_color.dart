import 'dart:math';
import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hexColor) : super(getColorFromHex(hexColor));

  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add alpha value if missing
    }

    try {
      // Validate and parse the hex string
      if (RegExp(r'^[0-9A-F]{8}$').hasMatch(hexColor)) {
        return int.parse(hexColor, radix: 16);
      } else {
        // Return a random color if validation fails
        return getRandomHexColor();
      }
    } catch (e) {
      // Fallback to a random color in case of an exception
      return getRandomHexColor();
    }
  }

  // Generate a random hex color with full opacity
  static int getRandomHexColor() {
    final Random random = Random();
    // Generate random RGB values
    String randomHex =
        "FF${List.generate(3, (_) => random.nextInt(256).toRadixString(16).padLeft(2, '0')).join()}";
    return int.parse(randomHex, radix: 16);
  }
}
