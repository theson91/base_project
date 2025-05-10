import 'dart:io';
import 'package:base_project/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? 
    CupertinoActivityIndicator(color: color ?? AppColors.primary, radius: 15) : 
    CircularProgressIndicator(color: color ?? AppColors.primary); 
  }
}