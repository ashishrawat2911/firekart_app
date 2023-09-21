/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets/res/fonts.gen.dart';

import 'colors.gen.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme({bool dark = false}) {
    TextTheme textTheme() => TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: dark ? AppColors.white : AppColors.black,
          ),
          displayMedium: TextStyle(
            fontSize: 20,
            color: dark ? AppColors.white : AppColors.color20203E,
            fontWeight: FontWeight.w500,
          ),
          displaySmall: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          headlineMedium: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.color20203E,
          ),
          headlineSmall: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.primaryColor,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            color: dark ? AppColors.white : AppColors.color4C4C6F,
          ),
          titleSmall: TextStyle(
            color: dark ? AppColors.white : AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            color: dark ? AppColors.white : AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          bodyMedium: TextStyle(
            color: dark ? AppColors.white : AppColors.black,
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: dark ? AppColors.color93C2F1 : AppColors.color4C4C6F,
          ),
          labelLarge: TextStyle(
            color: dark ? AppColors.color93C2F1 : AppColors.color4C4C6F,
            fontSize: 12,
          ),
          labelSmall: const TextStyle(
            color: AppColors.color4C4C6F,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        );

    return ThemeData(
      brightness: dark ? Brightness.dark : Brightness.light,
      fontFamily: FontFamily.poppins,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: dark ? AppColors.black : AppColors.white,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: dark ? AppColors.black : AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side:
              dark ? const BorderSide(color: AppColors.white) : BorderSide.none,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: AppColors.white,
          ),
        ),
        color: dark ? AppColors.black : AppColors.white,
      ),
      indicatorColor: AppColors.primaryColor,
      buttonTheme: ButtonThemeData(
        focusColor: AppColors.primaryColor,
        disabledColor: AppColors.primaryColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        highlightColor: Colors.transparent,
        buttonColor: AppColors.primaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.primaryColor.withOpacity(0.5);
              } else {
                return AppColors.primaryColor;
              }
            },
          ),
          elevation: MaterialStateProperty.all(0),
          foregroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: dark ? AppColors.white : AppColors.black,
        // unselectedLabelColor: AppColors.color4C4C6F,
        labelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: !dark ? AppColors.white : AppColors.black,
        selectedIconTheme: const IconThemeData(color: AppColors.primaryColor),
        unselectedIconTheme: IconThemeData(
          color: dark ? AppColors.dropShadow : AppColors.black,
        ),
        selectedLabelStyle: textTheme().bodyMedium?.copyWith(
              color: AppColors.primaryColor,
            ),
        unselectedLabelStyle: textTheme().bodyMedium?.copyWith(
              color: dark ? AppColors.dropShadow : AppColors.black,
            ),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: dark ? AppColors.dropShadow : AppColors.black,
      ),
      textTheme: textTheme(),
      appBarTheme: AppBarTheme(
        color: dark ? AppColors.black : AppColors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        titleTextStyle: textTheme().headlineSmall?.copyWith(
              color: !dark ? AppColors.black : AppColors.white,
            ),
        systemOverlayStyle:
            dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        // toolbarTextStyle: textTheme().headline5?.copyWith(
        //   color: !dark ? AppColors.black : AppColors.white,
        // )
      ),
      // colorScheme: ColorScheme(background: dark ? AppColors.black : AppColors.white),
    );
  }
}

extension TextThemeExt on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  bool get hasDarkMode {
    var brightness = MediaQuery.of(this).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode;
  }
}
