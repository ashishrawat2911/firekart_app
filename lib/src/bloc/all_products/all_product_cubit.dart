import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/base_states/result_state/result_state.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

class AllProductCubit extends Cubit<ResultState<List<ProductModel>>> {
  AllProductCubit(this._firebaseRepo) : super(const ResultState.idle());

  final FirestoreRepository _firebaseRepo;
  List<DocumentSnapshot> documents;
  List<ProductModel> productList;

  Future<void> fetchProducts([String condition]) async {
    emit(const ResultState.loading());
    try {
      if (condition == null) {
        documents = await _firebaseRepo.getAllProducts();
      } else {
        documents = await _firebaseRepo.getAllProductsData(condition);
      }
      productList = List<ProductModel>.generate(
          documents.length, (index) => ProductModel.fromJson(documents[index]));
      List.generate(productList.length, (index) {
        print(productList[index].name);
      });
      print(productList.length);
      emit(ResultState.data(data: productList.toSet().toList()));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }

  Future<void> fetchNextList([String condition]) async {
    try {
      final List<DocumentSnapshot> docs =
          await _firebaseRepo.getAllProducts(documents[documents.length - 1]);

      documents.addAll(docs);
      productList = List<ProductModel>.generate(
          documents.length, (index) => ProductModel.fromJson(documents[index]));
      List.generate(productList.length, (index) {
        print(productList[index].name);
      });
      print(productList.length);
      emit(ResultState.data(data: productList.toSet().toList()));
    } catch (e) {
      print(e);
      emit(ResultState.unNotifiedError(error: e.toString(), data: productList));
    }
  }
}
