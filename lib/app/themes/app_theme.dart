import 'package:flutter/material.dart';
import 'colors_scheme.dart';
import 'text_style.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,

  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  canvasColor: Colors.white,

  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    background: AppColors.background,
    error: AppColors.error,
  ),

  textTheme: TextTheme(
    displayLarge: AppTextStyles.h1,
    displayMedium: AppTextStyles.h2,
    displaySmall: AppTextStyles.h3,
    headlineMedium: AppTextStyles.h4,
    headlineSmall: AppTextStyles.h5,
    titleLarge: AppTextStyles.title,
    titleMedium: AppTextStyles.subtitle,
    bodyLarge: AppTextStyles.body,
    bodyMedium: AppTextStyles.bodySmall,
    labelLarge: AppTextStyles.button,
    labelSmall: AppTextStyles.caption,
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    elevation: 4,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: AppTextStyles.appBarTitle,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      textStyle: AppTextStyles.button,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      textStyle: AppTextStyles.button,
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.primary,
      side: const BorderSide(color: AppColors.primary),
      textStyle: AppTextStyles.button,
    ),
  ),

  iconTheme: const IconThemeData(
    color: AppColors.primary,
    size: 24,
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    labelStyle: const TextStyle(color: AppColors.primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
  ),

  dividerTheme: DividerThemeData(
    color: Colors.grey.shade300,
    thickness: 1,
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,
  ),
);
