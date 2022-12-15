import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:presentation/res/fonts.gen.dart';

import 'colors.gen.dart';

class AppTheme {
  AppTheme();

  static ThemeData appTheme({bool dark = false}) {
    TextTheme textTheme() => TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: dark ? AppColors.white : AppColors.black,
          ),
          headline2: const TextStyle(
            fontSize: 20,
            color: AppColors.color20203E,
            fontWeight: FontWeight.w500,
          ),
          headline3: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          headline4: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.color20203E,
          ),
          headline5: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.primaryColor,
          ),
          subtitle1: const TextStyle(
            fontSize: 16,
            color: AppColors.color4C4C6F,
          ),
          subtitle2: const TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: dark ? AppColors.white : AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            color: dark ? AppColors.white : AppColors.black,
            fontSize: 14,
          ),
          caption: TextStyle(
            fontSize: 14,
            color: dark ? AppColors.color93C2F1 : AppColors.color4C4C6F,
          ),
          button: TextStyle(
            color: dark ? AppColors.color93C2F1 : AppColors.color4C4C6F,
            fontSize: 12,
          ),
          overline: const TextStyle(
            color: AppColors.color4C4C6F,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        );

    return ThemeData(
      brightness: dark ? Brightness.dark : Brightness.light,
      fontFamily: FontFamily.poppins,
      primaryColor: AppColors.primaryColor,
      backgroundColor: dark ? AppColors.black : AppColors.white,
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
        selectedLabelStyle: textTheme().bodyText2?.copyWith(
              color: AppColors.primaryColor,
            ),
        unselectedLabelStyle: textTheme().bodyText2?.copyWith(
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
        titleTextStyle: textTheme().headline5?.copyWith(
              color: !dark ? AppColors.black : AppColors.white,
            ),
        systemOverlayStyle:
            dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        // toolbarTextStyle: textTheme().headline5?.copyWith(
        //   color: !dark ? AppColors.black : AppColors.white,
        // )
      ),
    );
  }
}
