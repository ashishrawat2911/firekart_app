import 'package:core/state_manager/view_model.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  AppViewModel() : super(const AppState());

  void setLocale() {}
}
