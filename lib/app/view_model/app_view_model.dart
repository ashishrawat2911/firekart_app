import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:injectable/injectable.dart';

import '../state/app_state.dart';

@injectable
class AppViewModel extends ViewModel<AppState> {
  AppViewModel() : super(const AppState());

  setLocale() {}
}
