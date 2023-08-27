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
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/usecases/get_address_usecase.dart';
import 'package:firekart/domain/usecases/get_cart_status_use_case.dart';
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends ViewModel<HomeState> {
  HomeScreenViewModel(
    this._getCartStatusUseCase,
    this._accountDetailsUseCaseUseCase,
    this._getAddressUseCase,
  ) : super(const HomeState());

  final GetCartStatusUseCase _getCartStatusUseCase;
  final StreamAccountDetailsUseCaseUseCase _accountDetailsUseCaseUseCase;
  final GetAddressUseCase _getAddressUseCase;

  void init() {
    refreshListeners();
  }

  void setBottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    await _accountDetailsUseCaseUseCase.execute().then(
      (value) {
        value.forEach(
          (r) {
            state = state.copyWith(
              accountDetails: r,
            );
          },
        );
      },
    );
    await _getAddressUseCase.execute().then(
      (value) {
        value.forEach(
          (r) {
            state = state.copyWith(
              addresses: r.reversed.toList(),
            );
          },
        );
      },
    );
  }
}
