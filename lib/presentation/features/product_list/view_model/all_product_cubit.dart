import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/domain/usecases/get_all_product_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state/result_state.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/models/product_model.dart';

@injectable
class AllProductCubit extends StateManager<ResultState<List<ProductModel>>> {
  AllProductCubit(this._getAllProductsUseCase) : super(const ResultState.idle());

  final GetAllProductsUseCase _getAllProductsUseCase;
  List<DocumentSnapshot>? documents;

  Future<void> fetchProducts([String? condition]) async {
    emit(const ResultState.loading());
    try {
      final productList = await _getAllProductsUseCase.execute(condition: condition);
      emit(ResultState.data(data: productList.toSet().toList()));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }

  Future<void> fetchNextList([String? condition]) async {
    try {
      final products = await _getAllProductsUseCase.execute(
        condition: condition,
        nextOrder: true,
      );

      emit(ResultState.data(data: products.toSet().toList()));
    } catch (e) {
      emit(ResultState.unNotifiedError(error: e.toString(), data: (state as Data<List<ProductModel>>).data));
    }
  }
}
