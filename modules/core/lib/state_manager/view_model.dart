/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/app_logger.dart';

abstract class ViewModel<S> extends Cubit<S> {
  ViewModel(S state) : super(state);

  set state(S value) {
    emit(value);
  }

  void updateState() {
    state = state;
  }

  @override
  void onChange(Change<S> change) {
    AppLogger.log(change.currentState.toString());
    super.onChange(change);
  }
}
