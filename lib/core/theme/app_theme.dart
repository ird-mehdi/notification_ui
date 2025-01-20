import 'package:flutter/material.dart';
import 'package:notification_ui/core/constants/app_colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      //iconTheme: IconThemeData(color: Colors.brown[900]),
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.titleText,
      ),
      scrolledUnderElevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontSize: 12, // Set label size to 12
            fontWeight: FontWeight.w600,
            color: AppColors.navigationBarLabelSelectedColor,
            overflow: TextOverflow.ellipsis,
          );
        }
        return TextStyle(
          fontSize: 12, // Set label size to 12
          fontWeight: FontWeight.w400,
          color: AppColors.navigationBarLabelColor,
        );
      }),
      indicatorColor:
          AppColors.navigationBarSelectedColor, // Remove active tab background
      iconTheme: WidgetStateProperty.all(
        IconThemeData(
          color: AppColors.navigationBarIconColor,
        ),
      ), // Remove active tab background
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.actionButtonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 0,
    ),
  );
}
