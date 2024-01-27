import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextstyle {
  static TextStyle titleLarge({Color? color}) => TextStyle(
        color: color ?? AppColors.textBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static TextStyle title({Color? color}) => TextStyle(
        color: color ?? AppColors.textBlack,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  static TextStyle bodyLarge({Color? color}) => TextStyle(
        color: color ?? AppColors.textBlack,
        fontSize: 18,
      );
  static TextStyle bodyMedium({Color? color}) => TextStyle(
        color: color ?? AppColors.textBlack,
        fontSize: 16,
      );
  static TextStyle label() => TextStyle(
        color: AppColors.textLightGrey,
        fontSize: 13,
      );
  static TextStyle labelLarge() => TextStyle(
        color: AppColors.textLightGrey,
        fontSize: 15,
      );
}
