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
import 'package:firekart/domain/models/add_order_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/order_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

@injectable
class PlaceOrderUseCase {
  final OrderRepository _repository;

  PlaceOrderUseCase(this._repository);

  Future<Either<NetworkError, EmptyEntity>> execute(AddOrder order) {
    return _repository.placeOrder(order);
  }
}
