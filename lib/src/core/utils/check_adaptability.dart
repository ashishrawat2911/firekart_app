import 'package:flutter/material.dart';

class CheckAdaptability {
  static ScreenSize checkScreenSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 800) {
      return Small();
    } else if (width >= 800 && width <= 1200) {
      return Medium();
    } else {
      return Large();
    }
  }

  static onScreenChange(BuildContext context,
      {VoidCallback? onSmallScreen,
      VoidCallback? onMediumScreen,
      VoidCallback? onLargeScreen}) {
    double width = MediaQuery.of(context).size.width;

    if (width < 800) {
      if (onSmallScreen != null) onSmallScreen();
    } else if (width >= 800 && width <= 1200) {
      if (onMediumScreen != null) onMediumScreen();
    } else {
      if (onLargeScreen != null) onLargeScreen();
    }
  }
}

class ScreenSize {}

class Small extends ScreenSize {}

class Medium extends ScreenSize {}

class Large extends ScreenSize {}
