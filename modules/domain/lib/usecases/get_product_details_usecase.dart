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
import 'package:dartz/dartz.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/product_model.dart';

@injectable
class GetProductDetailsUseCase {
  final ProductRepository _repository;

  GetProductDetailsUseCase(this._repository);

  Future<Either<NetworkError, Product>> execute(int productId) {
    return _repository.getProductsDetails(productId);
  }
}
