import 'package:flutter/material.dart';
import 'package:notification_ui/core/constant/app_colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.brown[900]),
      scrolledUnderElevation: 0,
    ),
  );
}
