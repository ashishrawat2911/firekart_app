import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/state/result_state.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class AllProductCubit extends ViewModel<ResultState<List<Product>>> {
  AllProductCubit(this._getAllProductsUseCase)
      : super(const ResultState.idle());

  final GetAllProductsUseCase _getAllProductsUseCase;
  List<DocumentSnapshot>? documents;

  Future<void> fetchProducts([String? condition]) async {
    state = const ResultState.loading();
    try {
      final productList =
          await _getAllProductsUseCase.execute(condition: condition);
      state = ResultState.data(data: productList.toSet().toList());
    } catch (e) {
      state = ResultState.error(error: e.toString());
    }
  }
}
