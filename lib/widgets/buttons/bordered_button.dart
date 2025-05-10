import 'package:flutter/material.dart';

class ButtonWithBorderColor extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final Color textColor;
  final TextStyle? textStyle;
  final double height;
  final double horizontalPadding;
  final bool isEnabled;

  const ButtonWithBorderColor({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderColor,
    this.borderWidth = 1.0,
    required this.textColor,
    this.textStyle,
    required this.height,
    this.horizontalPadding = 27,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final style = textStyle ??
        TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: textColor,
        );

    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Opacity(
        opacity: isEnabled ? 1.0 : 0.5,
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(height / 2),
            border: Border.all(color: borderColor, width: borderWidth),
          ),
          child: Center(
            child: Text(
              text,
              style: style,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}