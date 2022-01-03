import 'package:core/core.dart';
import 'package:network/network.dart';

class MyOrdersCubit extends Cubit<ResultState<List<OrderModel>>> {
  MyOrdersCubit(this.firebaseRepo) : super(const ResultState.idle());

  FirebaseManager firebaseRepo;

  late List<DocumentSnapshot> _documents;
  late List<OrderModel> _orderList;

  Future<void> fetchOrders() async {
    emit(const ResultState.loading());
    try {
      _documents = await firebaseRepo.getAllOrders();

      _orderList = List<OrderModel>.generate(_documents.length, (index) {
        return OrderModel.fromJson(_documents[index]);
      });
      emit(ResultState.data(data: _orderList.toSet().toList()));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }

  Future<void> fetchNextList() async {
    try {
      final List<DocumentSnapshot> docs =
          await firebaseRepo.getAllOrders(_documents[_documents.length - 1]);
      _documents.addAll(docs);
      _orderList = List<OrderModel>.generate(
          _documents.length, (index) => OrderModel.fromJson(_documents[index]));
      emit(ResultState.data(data: _orderList.toSet().toList()));
    } catch (e) {
      emit(ResultState.unNotifiedError(error: e.toString(), data: _orderList));
    }
  }
}
