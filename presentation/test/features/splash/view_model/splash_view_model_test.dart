import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/features/splash/state/splash_state.dart';
import 'package:presentation/features/splash/view_model/splash_view_model.dart';

void main() {
  test('TestSplash', () {
    SplashViewModel splashViewModel = SplashViewModel();
    splashViewModel.startSplash();
    const duration = Duration(milliseconds: 1500);
    Timer(duration, () {
      expect(splashViewModel.state, SplashSuccessState);
    });
  });
}
