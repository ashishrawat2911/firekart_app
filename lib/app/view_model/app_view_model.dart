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
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  AppViewModel() : super(const AppState());

  void setTheme(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }
}
