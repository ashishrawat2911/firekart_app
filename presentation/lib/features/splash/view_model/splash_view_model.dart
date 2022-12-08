import 'dart:async';

import 'package:core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/splash_state.dart';

@injectable
class SplashViewModel extends ViewModel<SplashState> {
  SplashViewModel() : super(SplashInitialState());

  void startSplash() {
    const duration = Duration(milliseconds: 1500);
    Timer(duration, () {
      NavigationHandler.navigateTo<void>(
        CheckStatusScreenRoute(),
        navigationType: NavigationType.pushReplacement,
      );
      state=(SplashSuccessState());
    });
  }
}
