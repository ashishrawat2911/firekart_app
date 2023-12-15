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
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../state/dashboard_state.dart';

enum ProductData { dealOfTheDay, onSale, topProducts }

@injectable
class DashboardViewModel extends ViewModel<DashboardState> {
  DashboardViewModel(this._getAllProductsUseCase)
      : super(const DashboardState());

  final GetAllProductsUseCase _getAllProductsUseCase;

  Future<void> fetchProductData(ProductData productData) async {
    final res = await _getAllProductsUseCase.execute(1, 100);
    res.fold((l) {}, (r) {
      state = state.copyWith(products: r);
    });
  }
}
