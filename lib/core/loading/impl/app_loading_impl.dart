import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/loading/app_loading.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_easyloading/src/theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttercommerce/presentation/res/colors.gen.dart';
class AppLoaderImpl extends AppLoader {
  @override
  TransitionBuilder initBuilder({TransitionBuilder? builder}) {
    return EasyLoading.init(builder: builder);
  }

  @override
  Future<void> dismissLoader() {
    return EasyLoading.dismiss(animation: true);

  }

  @override
  Widget loader() {
    return SpinKitCircle(
      color: AppColors.primaryColor,
      size: EasyLoadingTheme.indicatorSize,
    );
  }

  @override
  Future<void> showError(String error) {
    // TODO: implement showError
    throw UnimplementedError();
  }

  @override
  Future<void> showLoader({String? status}) {
    return EasyLoading.show(
      status: status ?? "Loading....",
      maskType: EasyLoadingMaskType.clear,
    );
  }

  @override
  void showToast(String? status) {
    // TODO: implement showToast
  }
}
