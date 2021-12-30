import 'dart:async';

import 'package:core/core.dart';
import 'package:navigation/navigation.dart';
import 'package:fluttercommerce/features/init/splash/state/splash_state.dart';

class SplashViewModel extends StateManager<SplashState> {
  SplashViewModel() : super(SplashInitialState());

  void startSplash() {
    const _duration = Duration(milliseconds: 1500);
    Timer(_duration, () {
      NavigationHandler.navigateTo(
        CheckStatusScreenRoute(),
        navigationType: NavigationType.pushReplacement,
      );
      emit(SplashSuccessState());
    });
  }
}
