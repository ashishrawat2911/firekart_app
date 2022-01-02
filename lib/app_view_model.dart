import 'package:core/core.dart';
import 'package:fluttercommerce/initializer.dart';

class AppState {
  bool lightTheme;

  AppState(this.lightTheme);
}

class AppViewModel extends StateManager<AppState> {
  AppViewModel() : super(AppState(true));

  toggleTheme() {
    state.lightTheme = !state.lightTheme;
    updateState();
  }

  initilize() {}

  @override
  Future<void> close() {
    Initializer.closeModules();
    return super.close();
  }
}
