import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/init/state/splash_state.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc() : super(SplashInitialState());

  void startSplash() {
    const _duration = Duration(milliseconds: 1500);
    Timer(_duration, () {
      emit(SplashSuccessState());
    });
  }
}
