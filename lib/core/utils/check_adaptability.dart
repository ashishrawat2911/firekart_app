import 'package:flutter/material.dart';

class CheckAdaptability {
  CheckAdaptability._();

  static ScreenSize checkScreenSize(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width < 800) {
      return Small();
    } else if (width >= 800 && width <= 1200) {
      return Medium();
    } else {
      return Large();
    }
  }

  static void onScreenChange(BuildContext context,
      {VoidCallback? onSmallScreen,
      VoidCallback? onMediumScreen,
      VoidCallback? onLargeScreen}) {
    final double width = MediaQuery.of(context).size.width;

    if (width < 800) {
      if (onSmallScreen != null) {
        onSmallScreen();
      }
    } else if (width >= 800 && width <= 1200) {
      if (onMediumScreen != null) {
        onMediumScreen();
      }
    } else {
      if (onLargeScreen != null) {
        onLargeScreen();
      }
    }
  }
}

class ScreenSize {}

class Small extends ScreenSize {}

class Medium extends ScreenSize {}

class Large extends ScreenSize {}
