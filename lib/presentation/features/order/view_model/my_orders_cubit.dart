import 'package:fluttercommerce/core/state_manager/view_model.dart';
import 'package:fluttercommerce/domain/usecases/get_all_orders_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state/result_state.dart';
import '../../../../domain/models/order_model.dart';

@injectable
class MyOrdersCubit extends ViewModel<ResultState<List<Order>>> {
  MyOrdersCubit(this._allOrdersUseCase) : super(const ResultState.idle());
  final GetAllOrdersUseCase _allOrdersUseCase;

  Future<void> fetchOrders() async {
    emit(const ResultState.loading());
    try {
      List<Order> orderList = await _allOrdersUseCase.execute();
      emit(ResultState.data(data: orderList));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }
}
