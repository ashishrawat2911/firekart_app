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
import 'package:core/state/result_state.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/order_model.dart';
import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;

@injectable
class MyOrdersCubit extends ViewModel<ResultState<List<Order>>> {
  MyOrdersCubit(this._allOrdersUseCase) : super(const ResultState.idle());
  final GetAllOrdersUseCase _allOrdersUseCase;

  Future<void> fetchOrders() async {
    state = const ResultState.loading();
    final res = await _allOrdersUseCase.execute();
    res.fold((l) {
      state = ResultState.error(error: l.errorMessage);
    }, (orderList) {
      state = ResultState.data(data: orderList);
    });
  }
}
