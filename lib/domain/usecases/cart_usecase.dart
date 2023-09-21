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
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@singleton
class CartUseCase {
  CartUseCase(this._repository);

  final CartRepository _repository;

  final _cartController = StreamController<List<Cart>>.broadcast();

  Future<Either<NetworkError, List<Cart>>> getCarts() async {
    final res = await _repository.getCarts();
    res.forEach(_cartController.add);
    return res;
  }

  Future<Either<NetworkError, EmptyEntity>> updateCart(
      int productId, int quantity) async {
    await getCarts();
    return _repository.updateCart(productId, quantity);
  }

  Stream<List<Cart>> carts() {
    return _cartController.stream;
  }

  int getNoOfItemsForAProduct(int productId, List<Cart> carts) {
    return carts
        .where((element) {
          return element.productId == productId;
        })
        .first
        .numOfItems;
  }

  void close() {
    _cartController.close();
  }
}
