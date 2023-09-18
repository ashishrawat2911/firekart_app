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
import 'package:firekart/core/extentions/list_extention.dart';
import 'package:firekart/data/error/network_handler.dart';
import 'package:firekart/data/model/common/base_response.dart';
import 'package:firekart/data/source/local/dao/cart_dao.dart';
import 'package:firekart/data/source/local/db/firekart_database.dart';
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../mapper/data_mapper.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;
  final CartDao _cartDao;

  CartRepositoryImpl(
    this._dataMapper,
    this._apiService,
    this._cartDao,
  );

  @override
  Future<Either<NetworkError, List<Cart>>> getCarts() {
    return getNetworkResult(
      () async {
        await _cartDao.deleteCarts();
        final cartsFromDB = (await _cartDao.getCarts()).mapToList(_dataMapper.cartFromDBModel);
        if (cartsFromDB.isEmpty) {
          final cartsFromAPi = await _apiService.getCarts().then(
                (value) => value.data.map(_dataMapper.cartFromModel).toList(),
              );
          await addCartToDB(cartsFromAPi);
          return cartsFromAPi;
        } else {
          return cartsFromDB;
        }
      },
    );
  }

  Future addCartToDB(List<Cart> carts) async {
    await _cartDao.addCarts(
      carts.mapToList(
        (e) {
          return CartTableEntityCompanion.insert(
            unit: e.unit,
            quantityPerUnit: e.quantityPerUnit.toDouble(),
            productId: e.productId,
            numOfItems: e.numOfItems,
            image: e.image,
            currentPrice: e.currentPrice.toDouble(),
            currency: e.currency,
            name: e.name,
          );
        },
      ),
    );
  }

  @override
  Stream<List<Cart>> watchCarts() {
    return _cartDao.watchCarts().map(
          (event) => event.mapToList(_dataMapper.cartFromDBModel),
        );
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> deleteFromCart(int productId) {
    return getNetworkResult(
      () async {
        return _apiService
            .deleteCart(
          productId,
        )
            .then((value) {
          _cartDao.deleteFromCart(productId);
          return value.toEntity();
        });
      },
    );
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> addProductToCart(int productId) async {
    return getNetworkResult(
      () async {
        return _apiService
            .addToCart(
          productId,
        )
            .then((value) {
          getCarts();
          return value.toEntity();
        });
      },
    );
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> updateCart(int productId, int quantity) {
    return getNetworkResult(
      () async {
        return _apiService
            .updateCart(
          productId,
          quantity,
        )
            .then((value) {
          _cartDao.updateCart(
            productId,
            quantity,
          );
          return value.toEntity();
        });
      },
    );
  }
}
