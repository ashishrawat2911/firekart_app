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
import 'package:core/state/result_state.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class AllProductCubit extends ViewModel<ResultState<List<Product>>> {
  AllProductCubit(this._getAllProductsUseCase)
      : super(const ResultState.idle());

  final GetAllProductsUseCase _getAllProductsUseCase;

  Future<void> fetchProducts() async {
    state = const ResultState.loading();
    final productList = await _getAllProductsUseCase.execute(1, 100);
    productList.fold((l) {
      state = ResultState.error(error: l.errorMessage);
    }, (r) {
      state = ResultState.data(data: r.toSet().toList());
    });
  }
}
