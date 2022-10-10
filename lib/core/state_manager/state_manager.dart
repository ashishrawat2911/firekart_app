import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/app_logger.dart';

abstract class ViewModel<S> extends Cubit<S> {
  ViewModel(S state) : super(state);

  set state(S value) {
    emit(value);
  }

  updateState() {
    state = state;
  }

  @override
  void onChange(Change<S> change) {
    AppLogger.log(change.currentState.toString());
    super.onChange(change);
  }
}
