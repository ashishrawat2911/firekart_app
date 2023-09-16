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
import 'package:core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/app_settings_state.dart';

@singleton
class AppSettingsViewModel extends ViewModel<AppSettingsState> {
  AppSettingsViewModel() : super(const AppSettingsState());

  void setLocale() {}
}
