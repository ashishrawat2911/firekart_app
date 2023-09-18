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
import 'package:firekart/data/model/common/base_response.dart';
import 'package:firekart/data/source/local/dao/cart_dao.dart';
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/add_order_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/models/order_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../mapper/data_mapper.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl extends OrderRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;
  final CartDao _cartDao;

  OrderRepositoryImpl(
    this._dataMapper,
    this._apiService,
    this._cartDao,
  );

  @override
  Future<Either<NetworkError, EmptyEntity>> placeOrder(AddOrder order) {
    return getNetworkResult(
      () {
        return _apiService
            .placeOrder(_dataMapper.addOrderToModel(order))
            .then((value) {
          _cartDao.deleteCarts();
          return value.toEntity();
        });
      },
    );
  }

  @override
  Future<Either<NetworkError, List<Order>>> getAllOrders() {
    return getNetworkResult(
      () async {
        final res = await _apiService.getAllOrders();
        return res.data.map(_dataMapper.orderFromModel).toList();
      },
    );
  }
}
