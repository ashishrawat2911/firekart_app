import 'package:fluttercommerce/core/state_manager/state_manager.dart';
import 'package:fluttercommerce/core/utils/connectivity.dart';
import 'package:fluttercommerce/features/app/firebase/firestore_repository.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:fluttercommerce/features/common/state/result_state.dart';
import 'package:fluttercommerce/features/home/state/dashboard_state.dart';

enum ProductData { DealOfTheDay, OnSale, TopProducts }

class DashboardCubit extends StateManager<DashboardState> {
  DashboardCubit(this._firebaseManager) : super(DashboardState());

  final FirebaseManager _firebaseManager;

  Future<void> fetchProductData(ProductData productData) async {
    String condition;
    switch (productData) {
      case ProductData.DealOfTheDay:
        state = state.copyWith(dealOfTheDay: const Loading());
        condition = "deal_of_the_day";
        break;
      case ProductData.OnSale:
        state = state.copyWith(onSale: const Loading());
        condition = "on_sale";
        break;
      case ProductData.TopProducts:
        state = state.copyWith(topProducts: const Loading());
        condition = "top_products";
        break;
    }
    try {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        onErrorState(productData, StringsConstants.connectionNotAvailable);
        return;
      }

      List<ProductModel> productList = await _firebaseManager.getProductsData(condition);

      final resultState = ResultState.data(data: productList);

      switch (productData) {
        case ProductData.DealOfTheDay:
          state = state.copyWith(dealOfTheDay: resultState);
          break;
        case ProductData.OnSale:
          state = state.copyWith(onSale: resultState);
          break;
        case ProductData.TopProducts:
          state = state.copyWith(topProducts: resultState);
          break;
      }
    } catch (e) {
      onErrorState(productData, e.toString());
    }
  }

  void onErrorState(ProductData productData, String error) {
    final errorState = ResultState<List<ProductModel>>.error(error: error);
    switch (productData) {
      case ProductData.DealOfTheDay:
        state = state.copyWith(dealOfTheDay: errorState);
        break;
      case ProductData.OnSale:
        state = state.copyWith(onSale: errorState);
        break;
      case ProductData.TopProducts:
        state = state.copyWith(topProducts: errorState);
        break;
    }
  }
}
