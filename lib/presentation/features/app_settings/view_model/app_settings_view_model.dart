import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/app_settings_state.dart';

@singleton
class AppSettingsViewModel extends ViewModel<AppSettingsState> {
  AppSettingsViewModel() : super(const AppSettingsState());

  void setLocale() {}
}
