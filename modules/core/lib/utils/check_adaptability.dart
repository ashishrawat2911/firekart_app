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

enum ScreenSize { small, normal, large, extraLarge }

class CheckAdaptability {
  CheckAdaptability._();

  static ScreenSize getSize(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.shortestSide;
    if (deviceWidth > 900) return ScreenSize.extraLarge;
    if (deviceWidth > 600) return ScreenSize.large;
    if (deviceWidth > 300) return ScreenSize.normal;
    return ScreenSize.small;
  }

  static void onScreenChange(
    BuildContext context, {
    VoidCallback? onSmallScreen,
    VoidCallback? onNormalScreen,
    VoidCallback? onLargeScreen,
    VoidCallback? onExtraLargeScreen,
  }) {
    switch (getSize(context)) {
      case ScreenSize.small:
        onSmallScreen?.call();
        break;
      case ScreenSize.normal:
        onNormalScreen?.call();
        break;
      case ScreenSize.large:
        onLargeScreen?.call();
        break;
      case ScreenSize.extraLarge:
        onExtraLargeScreen?.call();
        break;
    }
  }
}
