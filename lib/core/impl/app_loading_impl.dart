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
import 'package:flutter_easyloading/flutter_easyloading.dart';
// ignore: implementation_imports
import 'package:flutter_easyloading/src/theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoaderImpl {
  TransitionBuilder initBuilder({TransitionBuilder? builder}) {
    return EasyLoading.init(builder: builder);
  }

  Future<void> dismissLoader() {
    return EasyLoading.dismiss();
  }

  Widget loader() {
    return SpinKitCircle(
      // color: AppColors.primaryColor,
      size: EasyLoadingTheme.indicatorSize,
    );
  }

  Future<void> showError(String error) {
    // TODO: implement showError
    throw UnimplementedError();
  }

  Future<void> showLoader({String? status}) {
    return EasyLoading.show(
      status: status ?? 'Loading....',
      maskType: EasyLoadingMaskType.clear,
    );
  }

  void showToast(String? status) {
    // TODO: implement showToast
  }
}
