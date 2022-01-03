import 'package:core/core.dart';
import 'package:intro/src/home/state/dashboard_state.dart';
import 'package:network/network.dart';

enum ProductData { dealOfTheDay, onSale, topProducts }

class DashboardCubit extends StateManager<DashboardState> {
  DashboardCubit(this._firebaseManager) : super(const DashboardState());

  final FirebaseManager _firebaseManager;

  Future<void> fetchProductData(ProductData productData) async {
    String condition;
    switch (productData) {
      case ProductData.dealOfTheDay:
        state = state.copyWith(dealOfTheDay: const Loading());
        condition = "deal_of_the_day";
        break;
      case ProductData.onSale:
        state = state.copyWith(onSale: const Loading());
        condition = "on_sale";
        break;
      case ProductData.topProducts:
        state = state.copyWith(topProducts: const Loading());
        condition = "top_products";
        break;
    }
    try {
      if (!(await ConnectionStatus.getInstance().checkConnection())) {
        onErrorState(productData, StringsConstants.connectionNotAvailable);
        return;
      }

      final List<ProductModel> productList =
          await _firebaseManager.getProductsData(condition);

      final resultState = ResultState.data(data: productList);

      switch (productData) {
        case ProductData.dealOfTheDay:
          state = state.copyWith(dealOfTheDay: resultState);
          break;
        case ProductData.onSale:
          state = state.copyWith(onSale: resultState);
          break;
        case ProductData.topProducts:
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
      case ProductData.dealOfTheDay:
        state = state.copyWith(dealOfTheDay: errorState);
        break;
      case ProductData.onSale:
        state = state.copyWith(onSale: errorState);
        break;
      case ProductData.topProducts:
        state = state.copyWith(topProducts: errorState);
        break;
    }
  }
}
