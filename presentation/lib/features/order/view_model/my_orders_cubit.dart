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
    try {
      final orderList = await _allOrdersUseCase.execute();
      state = (ResultState.data(data: orderList));
    } catch (e) {
      state = (ResultState.error(error: e.toString()));
    }
  }
}
