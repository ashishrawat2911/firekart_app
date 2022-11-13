import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextTheme textTheme = TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 22,
      color: AppColors.black,
    ),
    headline2: TextStyle(
      fontSize: 20,
      color: AppColors.color20203E,
      fontWeight: FontWeight.w500,
    ),
    headline3: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.color20203E,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: AppColors.primaryColor,
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      color: AppColors.color4C4C6F,
    ),
    subtitle2: TextStyle(
      color: AppColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    bodyText2: TextStyle(
      color: AppColors.black,
      fontSize: 14,
    ),
    caption: TextStyle(
      fontSize: 14,
      color: AppColors.color4C4C6F,
    ),
    button: TextStyle(
      color: AppColors.color4C4C6F,
      fontSize: 12,
    ),
    overline: TextStyle(
      color: AppColors.color4C4C6F,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  );
}
