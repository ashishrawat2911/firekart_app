/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/usecases/get_cart_status_use_case.dart';
import 'package:fluttercommerce/domain/usecases/stream_account_details_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends ViewModel<HomeState> {
  HomeScreenViewModel(
    this._getCartStatusUseCase,
    this._accountDetailsUseCaseUseCase,
  ) : super(const HomeState());

  final GetCartStatusUseCase _getCartStatusUseCase;
  final StreamAccountDetailsUseCaseUseCase _accountDetailsUseCaseUseCase;

  void init() {
    refreshListeners();
  }

  void setBottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    _accountDetailsUseCaseUseCase.execute().listen(_addDetails);
    _getCartStatusUseCase.execute().listen((event) {});
  }

  void _addDetails(AccountDetails accountDetails) {
    accountDetails.addresses = accountDetails.addresses.reversed.toList();

    state = state.copyWith(
      accountDetails: accountDetails,
    );
  }
}
