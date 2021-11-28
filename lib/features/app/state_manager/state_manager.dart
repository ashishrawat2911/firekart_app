import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';

abstract class StateManager<S> extends Cubit<S> {
  StateManager(S state) : super(state);

  set state(S value) {
    emit(value);
  }
}
