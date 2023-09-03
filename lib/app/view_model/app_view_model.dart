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
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firekart/core/logger/app_logger.dart';
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/usecases/set_device_token_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  final SetDeviceTokenUseCase _setDeviceTokenUseCase;

  AppViewModel(this._setDeviceTokenUseCase) : super(const AppState());

  void initialize() {
    FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.instance.getToken().then(
      (deviceToken) {
        if (deviceToken != null) {
          _setDeviceTokenUseCase.execute(deviceToken);
          AppLogger.log('Device Token: $deviceToken');
        }
      },
    );
    FirebaseMessaging.onMessage.listen((message) {
      AppLogger.log('Message data: ${message.data}');
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      AppLogger.log('Message data: ${message.data}');
    });
    FirebaseMessaging.onBackgroundMessage((message) async {
      AppLogger.log('Message data: ${message.data}');
    });
  }

  void setTheme(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }
}
