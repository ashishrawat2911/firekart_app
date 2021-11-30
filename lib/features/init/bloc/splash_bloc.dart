import 'dart:async';

import 'package:fluttercommerce/features/app/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/state_manager/state_manager.dart';
import 'package:fluttercommerce/features/init/state/splash_state.dart';

class SplashBloc extends StateManager<SplashState> {
  SplashBloc() : super(SplashInitialState());

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
