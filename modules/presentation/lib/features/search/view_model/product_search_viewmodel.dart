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
import 'package:core/state_manager/view_model.dart';
import 'package:domain/usecases/search_products_use_case.dart';
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

    final res = await _searchProductsUseCase.execute(query);
    await res.fold((l) {
      state = state.copyWith(error: l.errorMessage);
    }, (r) async {
      state = state.copyWith(productList: r);
    });

    state = state.copyWith(loading: false);
  }
}
