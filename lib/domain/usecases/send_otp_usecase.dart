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
import 'package:firekart/domain/models/login.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class SendOTPUseCase {
  final AuthRepository _repository;

  SendOTPUseCase(this._repository);

  Future<Either<NetworkError, Login>> execute({
    required String phoneNumber,
  }) {
    return _repository.login(phoneNumber);
  }

  Future<Either<NetworkError, void>> loginWithOtp(
    String phoneNumber,
    String smsCode, {
    String? name,
  }) {
    return _repository.verifyOtp(phoneNumber, smsCode, name: name);
  }
}
