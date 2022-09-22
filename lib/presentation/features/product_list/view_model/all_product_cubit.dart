import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/state/result_state.dart';
import '../../../../core/state_manager/state_manager.dart';
import '../../../../data/firebase_manager/firestore_manager.dart';
import '../../../../data/models/product_model.dart';

@injectable
class AllProductCubit extends StateManager<ResultState<List<ProductModel>>> {
  AllProductCubit(this._firebaseRepo) : super(const ResultState.idle());

  final FirebaseManager _firebaseRepo;
  List<DocumentSnapshot>? documents;
  List<ProductModel>? productList;

  Future<void> fetchProducts([String? condition]) async {
    emit(const ResultState.loading());
    try {
      if (condition == null) {
        documents = await _firebaseRepo.getAllProducts();
      } else {
        documents = await _firebaseRepo.getAllProductsData(condition);
      }
      productList =
          List<ProductModel>.generate(documents!.length, (index) => ProductModel.fromJson(documents![index].data()));
      List.generate(productList!.length, (index) {});
      emit(ResultState.data(data: productList!.toSet().toList()));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }

  Future<void> fetchNextList([String? condition]) async {
    try {
      final List<DocumentSnapshot> docs = await _firebaseRepo.getAllProducts(documents![documents!.length - 1]);

      documents!.addAll(docs);
      productList = List<ProductModel>.generate(documents!.length, (index) => ProductModel.fromJson(documents![index]));
      List.generate(productList!.length, (index) {});
      emit(ResultState.data(data: productList!.toSet().toList()));
    } catch (e) {
      emit(ResultState.unNotifiedError(error: e.toString(), data: productList!));
    }
  }
}
