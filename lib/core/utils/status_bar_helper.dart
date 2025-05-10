import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarHelper {
  // Use this method when knowning exactly what color you want for the status bar
  static void setStatusBarStyle({required bool isDarkBackground}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDarkBackground ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDarkBackground ? Brightness.dark : Brightness.light,
      ),
    );
  }

  // Use this method to set the status bar color based on the background color
  static void setStatusBarForColor(Color backgroundColor) {
    final brightness = ThemeData.estimateBrightnessForColor(backgroundColor);
    setStatusBarStyle(isDarkBackground: brightness == Brightness.dark);
  }
}
