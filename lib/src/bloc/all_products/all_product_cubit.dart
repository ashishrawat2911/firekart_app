import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/base_states/result_state/result_state.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';

class AllProductCubit extends Cubit<ResultState<List<ProductModel>>> {
  var _firebaseRepo = AppInjector.get<FirestoreRepository>();
  var _authRepo = AppInjector.get<AuthRepository>();

  AllProductCubit() : super(ResultState.idle());
  List<DocumentSnapshot> documents;
  List<ProductModel> productList;

  fetchProducts([String condition]) async {
    emit(ResultState.loading());
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

  fetchNextList([String condition]) async {
    try {
      List<DocumentSnapshot> docs =
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
