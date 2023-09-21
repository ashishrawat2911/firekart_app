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
import 'package:firekart/domain/models/add_order_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/models/order_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';

abstract class OrderRepository {
  Future<Either<NetworkError, EmptyEntity>> placeOrder(AddOrder order);

  Future<Either<NetworkError, List<Order>>> getAllOrders();
}
