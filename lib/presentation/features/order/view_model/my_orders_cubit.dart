import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/domain/usecases/get_all_orders_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state/result_state.dart';
import '../../../../domain/models/order_model.dart';

@injectable
class MyOrdersCubit extends Cubit<ResultState<List<OrderModel>>> {
  MyOrdersCubit(this._allOrdersUseCase) : super(const ResultState.idle());
  final GetAllOrdersUseCase _allOrdersUseCase;

  late List<OrderModel> _orderList;

  Future<void> fetchOrders() async {
    emit(const ResultState.loading());
    try {
      List<OrderModel> _orderList = await _allOrdersUseCase.execute();
      emit(ResultState.data(data: _orderList));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }

  Future<void> fetchNextList() async {
    try {
      List<OrderModel> _orderList = await _allOrdersUseCase.execute(nextOrder: true);
      emit(ResultState.data(data: _orderList));
    } catch (e) {
      emit(ResultState.unNotifiedError(error: e.toString(), data: _orderList));
    }
  }
}
