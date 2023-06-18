import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercommerce/initializer.dart';
import 'package:fluttercommerce/presentation/features/splash/state/splash_state.dart';
import 'package:fluttercommerce/presentation/features/splash/view_model/splash_view_model.dart';

void main() {
  test('TestSplash', () {
    Initializer.initialize((value) { });
    SplashViewModel splashViewModel = SplashViewModel();
    splashViewModel.startSplash();
    const duration = Duration(milliseconds: 1500);
    Timer(duration, () {
      expect(splashViewModel.state, SplashSuccessState);
    });
  });
}
