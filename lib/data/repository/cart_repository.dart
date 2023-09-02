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
import 'package:firekart/data/error/network_handler.dart';
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../mapper/data_mapper.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;

  CartRepositoryImpl(
    this._dataMapper,
    this._apiService,
  );

  @override
  Future<Either<NetworkError, List<Cart>>> getCarts() {
    return getNetworkResult(
      () {
        return _apiService.getCarts().then(
              (value) => value.data.map(_dataMapper.cartFromModel).toList(),
            );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> deleteFromCart(int productId) {
    return getNetworkResult(
      () async {
        await _apiService.deleteCart(
          productId,
        );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> addProductToCart(int productId) async {
    return getNetworkResult(
      () async {
        await _apiService.addToCart(
          productId,
        );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> updateCart(int productId, int quantity) {
    return getNetworkResult(
      () async {
        await _apiService.updateCart(
          productId,
          quantity,
        );
      },
    );
  }
}
