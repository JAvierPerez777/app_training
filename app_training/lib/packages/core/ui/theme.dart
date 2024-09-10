import 'package:app_training/packages/core/ui/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static var colorScheme = ColorScheme.light(
    primary: AppColors.primary,
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(44),
    ),
  );

  static ThemeData get light {
    return ThemeData.from(
      colorScheme: colorScheme,
    ).copyWith(
      elevatedButtonTheme: _elevatedButtonTheme,
    );
  }
}
