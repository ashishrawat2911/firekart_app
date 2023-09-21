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

import 'package:dartz/dartz.dart' hide Order;
import 'package:domain/models/product_model.dart';
import 'package:domain/network_result/network_error.dart';

abstract class ProductRepository {
  Future<Either<NetworkError, List<Product>>> getAllProducts(
    int page,
    int limit,
  );

  Future<Either<NetworkError, Product>> getProductsDetails(int productId);

  Future<Either<NetworkError, List<Product>>> getProductsByQuery(String query);
}
