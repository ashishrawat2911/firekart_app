/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'dart:async';

import 'package:core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../state/splash_state.dart';

@injectable
class SplashViewModel extends ViewModel<SplashState> {
  SplashViewModel() : super(SplashInitialState());

  void startSplash() {
    const duration = Duration(milliseconds: 1500);
    Timer(duration, () {
      RouteHandler.routeTo(
        CheckStatusRoute(),
        routingType: RoutingType.pushReplacement,
      );
      state = SplashSuccessState();
    });
  }
}
