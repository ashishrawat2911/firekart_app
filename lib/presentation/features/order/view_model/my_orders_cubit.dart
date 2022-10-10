import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/domain/usecases/get_all_orders_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state/result_state.dart';
import '../../../../domain/models/order_model.dart';

@injectable
class MyOrdersCubit extends Cubit<ResultState<List<Order>>> {
  MyOrdersCubit(this._allOrdersUseCase) : super(const ResultState.idle());
  final GetAllOrdersUseCase _allOrdersUseCase;

  Future<void> fetchOrders() async {
    emit(const ResultState.loading());
    try {
      List<Order> _orderList = await _allOrdersUseCase.execute();
      emit(ResultState.data(data: _orderList));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }
}
