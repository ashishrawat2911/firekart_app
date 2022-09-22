import 'dart:async';


import '../../../../core/state_manager/state_manager.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/splash_state.dart';

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
