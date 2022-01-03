import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: AppFonts.poppins,
      primaryColor: AppColors.primaryColor,
      backgroundColor: AppColors.backGroundColor,
      scaffoldBackgroundColor: AppColors.white,
      cardTheme: const CardTheme(elevation: 1, margin: EdgeInsets.only()),
      indicatorColor: AppColors.primaryColor,
      buttonTheme: const ButtonThemeData(),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.black,
        // unselectedLabelColor: AppColors.color8897A4,
        labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        titleTextStyle: AppTextStyles.t26,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
    );
  }
}
