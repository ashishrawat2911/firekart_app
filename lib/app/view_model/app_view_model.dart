import 'package:injectable/injectable.dart';

import '../../core/state_manager/view_model.dart';
import '../state/app_state.dart';

@singleton
class AppViewModel extends ViewModel<AppState> {
  AppViewModel() : super(const AppState());

  void setLocale() {}
}
