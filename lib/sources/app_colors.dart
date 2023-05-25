import 'package:flutter/material.dart';

class AppColors {
  static const Color transparent = Colors.transparent;
  static const Color secondary = Color(0xFFA9A9A9);
  static const Color secondaryVariant = Color(0xFF383838);
  static const Color primary = Color(0xFFDBDBDB);
  static const Color primaryVariant = Color(0xFFFFD600);
  static const Color disabled = Color(0xFFFBEFB4);
  static const Color accentRed = Color(0xFFFF8989);

  static const customColor = MaterialColor(0xFFFFD600, {
    50: AppColors.primaryVariant,
    100: AppColors.primaryVariant,
    200: AppColors.primaryVariant,
    300: AppColors.primaryVariant,
    400: AppColors.primaryVariant,
    500: AppColors.primaryVariant,
    600: AppColors.primaryVariant,
    700: AppColors.primaryVariant,
    800: AppColors.primaryVariant,
    900: AppColors.primaryVariant,
  });
}
