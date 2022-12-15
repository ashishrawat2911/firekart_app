import 'package:flutter/material.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'app_settings_state.freezed.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    Locale? locale,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _AppSettingsState;
}
