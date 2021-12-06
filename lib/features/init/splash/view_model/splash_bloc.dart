import 'dart:async';

import 'package:fluttercommerce/core/navigation/navigation_handler.dart';
import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/init/splash/state/splash_state.dart';

class SplashViewModel extends StateManager<SplashState> {
  SplashViewModel() : super(SplashInitialState());

  void startSplash() {
    const _duration = Duration(milliseconds: 1500);
    Timer(_duration, () {
      NavigationHandler.navigateTo(
        CheckStatusScreenRoute(),
        navigationType: NavigationType.PushReplacement,
      );
      emit(SplashSuccessState());
    });
  }
}
