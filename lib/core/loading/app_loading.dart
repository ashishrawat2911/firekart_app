import 'package:flutter/material.dart';

abstract class AppLoader {
  TransitionBuilder initBuilder({TransitionBuilder? builder});

  Future<void> showLoader({String? status});

  Widget loader();

  Future<void> dismissLoader();

  void showToast(String? status);

  Future<void> showError(String error);
}

