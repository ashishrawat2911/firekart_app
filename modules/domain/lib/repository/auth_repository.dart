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
import 'package:domain/models/login.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';

abstract class AuthRepository {
  bool isLoggedIn();

  Future<Either<NetworkError, Login>> login(String phoneNumber);

  Future<Either<NetworkError, void>> verifyOtp(
    String phoneNumber,
    String smsCode, {
    String? name,
  });

  Future<Either<NetworkError, EmptyEntity>> logout();

  Future<void> setDeviceToken(String deviceToken);
}
