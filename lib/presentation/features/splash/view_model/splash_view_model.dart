import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../core/state_manager/state_manager.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../state/splash_state.dart';

@injectable
class SplashViewModel extends ViewModel<SplashState> {
  SplashViewModel() : super(SplashInitialState());

  void startSplash() {
    const duration = Duration(milliseconds: 1500);
    Timer(duration, () {
      NavigationHandler.navigateTo(
        CheckStatusScreenRoute(),
        navigationType: NavigationType.pushReplacement,
      );
      emit(SplashSuccessState());
    });
  }
}
