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
import 'package:domain/models/account_details_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/network.dart';

abstract class UserRepository {
  Future<Either<NetworkError, AccountDetails>> getUserDetails();

  Future<Either<NetworkError, List<Address>>> fetchUserAddress();

  Future<Either<NetworkError, EmptyEntity>> addAddress(AddAddress address);

  Future<Either<NetworkError, EmptyEntity>> editAddress(EditAddress address);
}
