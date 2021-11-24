import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/app/repo/auth_repository.dart';
import 'package:fluttercommerce/features/app/repo/firestore_repository.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/common/state/result_state.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/core/utils/connectivity.dart';
import 'package:fluttercommerce/di/di.dart';

enum ProductData { DealOfTheDay, OnSale, TopProducts }

class ProductDataCubit extends Cubit<ResultState<List<ProductModel>>> {
  var repo = DI.container<FirestoreRepository>();
  var authRepo = DI.container<AuthRepository>();

  ProductDataCubit() : super(const ResultState.idle());

  fetchProductData(ProductData productData) async {
    emit(const Loading());

    try {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        emit(const ResultState.error(
            error: StringsConstants.connectionNotAvailable));
        return;
      }
      String condition;
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
      List<ProductModel> productList = await repo.getProductsData(condition);
      emit(ResultState.data(data: productList));
    } catch (e) {
      emit(ResultState.error(error: e.toString()));
    }
  }
}
