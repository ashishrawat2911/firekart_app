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
import 'package:core/logger/app_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// ignore: implementation_imports
import 'package:flutter_easyloading/src/theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoader {
  static TransitionBuilder initBuilder({TransitionBuilder? builder}) {
    return EasyLoading.init(builder: builder);
  }

  static Future<void> dismissLoader() {
    return EasyLoading.dismiss();
  }

  static Widget loader() {
    return SpinKitCircle(
      // color: AppColors.primaryColor,
      size: EasyLoadingTheme.indicatorSize,
    );
  }

  static Future<void> showError(String error) {
    return EasyLoading.showError(
      error,
      duration: const Duration(seconds: 3),
    );
  }

  static Future<void> showLoader({String? status}) {
    return EasyLoading.show(
      status: status ?? 'Loading....',
      maskType: EasyLoadingMaskType.clear,
    );
  }

  static Future<void> showToast(
    String? status, {
    EasyLoadingToastPosition? toastPosition,
  }) async {
    AppLogger.log('showToast $status');
    if (status == null) {
      return;
    }
    await EasyLoading.showToast(
      status,
      toastPosition: toastPosition ?? EasyLoadingToastPosition.bottom,
    );
  }
}
