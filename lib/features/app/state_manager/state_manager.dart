import 'package:flutter_bloc/flutter_bloc.dart';

abstract class StateManager<S> extends Cubit<S> {
  StateManager(S state) : super(state);

  set state(S value) {
    emit(value);
  }

  @override
  void onChange(Change<S> change) {
    super.onChange(change);
    print(change);
  }
}
