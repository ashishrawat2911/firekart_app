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
import 'package:domain/models/cart_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/network.dart';

abstract class CartRepository {
  Future<Either<NetworkError, EmptyEntity>> addProductToCart(int productId);

  Future<Either<NetworkError, EmptyEntity>> updateCart(
    int productId,
    int quantity,
  );

  Future<Either<NetworkError, EmptyEntity>> deleteFromCart(int productId);

  Future<Either<NetworkError, List<Cart>>> getCarts();

  Stream<List<Cart>> watchCarts();
}
