import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercommerce/presentation/res/text_styles.dart';

import 'app_colors.dart';
import 'font_family.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: AppFonts.poppins,
      primaryColor: AppColors.primaryColor,
      backgroundColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.white,
      cardTheme: const CardTheme(elevation: 1, margin: EdgeInsets.only()),
      indicatorColor: AppColors.primaryColor,
      buttonTheme: const ButtonThemeData(),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.black,
        // unselectedLabelColor: AppColors.color4C4C6F,
        labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      textTheme: AppTextStyles.textTheme,
      appBarTheme: AppBarTheme(
        color: AppColors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        titleTextStyle: AppTextStyles.textTheme.headline5,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
    );
  }
}
