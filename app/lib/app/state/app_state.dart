import 'package:flutter/material.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    Locale? locale,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _AppState;
}
