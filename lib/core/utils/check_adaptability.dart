/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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

enum ScreenSize { Small, Normal, Large, ExtraLarge }

class CheckAdaptability {
  CheckAdaptability._();

  static ScreenSize getSize(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.shortestSide;
    if (deviceWidth > 900) return ScreenSize.ExtraLarge;
    if (deviceWidth > 600) return ScreenSize.Large;
    if (deviceWidth > 300) return ScreenSize.Normal;
    return ScreenSize.Small;
  }

  static void onScreenChange(
    BuildContext context, {
    VoidCallback? onSmallScreen,
    VoidCallback? onNormalScreen,
    VoidCallback? onLargeScreen,
    VoidCallback? onExtraLargeScreen,
  }) {
    switch (getSize(context)) {
      case ScreenSize.Small:
        onSmallScreen?.call();
        break;
      case ScreenSize.Normal:
        onNormalScreen?.call();
        break;
      case ScreenSize.Large:
        onLargeScreen?.call();
        break;
      case ScreenSize.ExtraLarge:
        onExtraLargeScreen?.call();
        break;
    }
  }
}
