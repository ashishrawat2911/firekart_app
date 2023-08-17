/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:firekart/core/state_manager/view_model.dart';
import 'package:firekart/domain/usecases/search_products_use_case.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/product_search_state.dart';

@injectable
class ProductSearchViewModel extends ViewModel<ProductSearchState> {
  ProductSearchViewModel(this._searchProductsUseCase)
      : super(const ProductSearchState());

  final SearchProductsUseCase _searchProductsUseCase;

  Future<void> searchProduct(String query) async {
    state = state.copyWith(loading: true);
    try {
      final productList = await _searchProductsUseCase.execute(query);

      state = state.copyWith(productList: productList);
    } catch (e) {
      state = state.copyWith(error: '');
    }
    state = state.copyWith(loading: false);
  }
}
