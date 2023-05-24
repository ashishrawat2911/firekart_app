/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_state.freezed.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    Locale? locale,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _AppSettingsState;
}
