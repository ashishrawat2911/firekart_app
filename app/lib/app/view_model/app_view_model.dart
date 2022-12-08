import 'package:core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';

import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  AppViewModel() : super(const AppState());

  void setLocale() {}
}
