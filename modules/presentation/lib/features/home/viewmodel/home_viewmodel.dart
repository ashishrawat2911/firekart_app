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
import 'package:core/impl/app_loading_impl.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/logout_usecase.dart';
import 'package:domain/usecases/stream_account_details_usecase.dart';
import 'package:presentation/routes/app_router.gr.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../../../routes/route_handler.dart';
import '../state/home_state.dart';

@injectable
class HomeScreenViewModel extends ViewModel<HomeState> {
  HomeScreenViewModel(
    this._getCartStatusUseCase,
    this._accountDetailsUseCaseUseCase,
    this._getAddressUseCase,
    this._logoutUseCase,
  ) : super(const HomeState());

  final GetCartStatusUseCase _getCartStatusUseCase;
  final StreamAccountDetailsUseCaseUseCase _accountDetailsUseCaseUseCase;
  final GetAddressUseCase _getAddressUseCase;
  final LogoutUseCase _logoutUseCase;

  void init() {
    refreshListeners();
  }

  void setBottomBarIndex(int value) {
    state = state.copyWith(bottomIndex: value);
  }

  Future<void> refreshListeners() async {
    await _accountDetailsUseCaseUseCase.execute().then(
      (value) {
        value.fold(
          (l) async {
            if (l.status == 401) {
              final res = await _logoutUseCase.execute();
              res.forEach((r) {
                AppLoader.showToast('Logging out');
                RouteHandler.routeTo(
                  const LoginRoute(),
                  routingType: RoutingType.pushAndPopUntil,
                );
              });
            }
          },
          (r) {
            state = state.copyWith(
              accountDetails: r,
            );
          },
        );
      },
    );
    await _getCartStatusUseCase.execute().then(
      (value) {
        value.forEach(
          (r) {
            state = state.copyWith(
              noOfItemsInCart: r.length,
            );
          },
        );
      },
    );
    _getCartStatusUseCase.watch().listen((carts) {
      state = state.copyWith(
        noOfItemsInCart: carts.length,
      );
    });
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
