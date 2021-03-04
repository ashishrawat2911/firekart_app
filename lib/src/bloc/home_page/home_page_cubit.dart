import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/base_states/result_state/result_state.dart';
import 'package:fluttercommerce/src/core/utils/connectivity.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/product_model.dart';
import 'package:fluttercommerce/src/repository/auth_repository.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';

enum ProductData { DealOfTheDay, OnSale, TopProducts }

class ProductDataCubit extends Cubit<ResultState<List<ProductModel>>> {
  var repo = AppInjector.get<FirestoreRepository>();
  var authRepo = AppInjector.get<AuthRepository>();

  ProductDataCubit() : super(ResultState.idle());

  fetchProductData(ProductData productData) async {
    emit(Loading());

    try {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(ResultState.error(error: StringsConstants.connectionNotAvailable));
        return;
      }
      String? condition;
      switch (productData) {
        case ProductData.DealOfTheDay:
          condition = "deal_of_the_day";
          break;
        case ProductData.OnSale:
          condition = "on_sale";
          break;
        case ProductData.TopProducts:
          condition = "top_products";
          break;
      }
      List<ProductModel> productList = await repo!.getProductsData(condition);
      emit(ResultState.data(data: productList));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }
}
