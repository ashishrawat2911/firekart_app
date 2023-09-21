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
import 'package:data/error/network_handler.dart';
import 'package:data/mapper/data_mapper.dart';
import 'package:data/model/common/base_response.dart';
import 'package:data/model/request/otp_verify_request_model.dart';
import 'package:data/source/local/local_storage.dart';
import 'package:data/source/remote/api_service.dart';
import 'package:domain/models/login.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final LocalStorage _localStorage;
  final DataMapper _dataMapper;
  final ApiService _apiService;

  AuthRepositoryImpl(
    this._localStorage,
    this._dataMapper,
    this._apiService,
  );

  @override
  bool isLoggedIn() {
    return _localStorage.isLoggedIn;
  }

  @override
  Future<Either<NetworkError, Login>> login(String phoneNumber) async {
    return getNetworkResult(() async {
      final res = await _apiService.login(phoneNumber);
      return _dataMapper.loginFromModel(res.data);
    });
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> verifyOtp(
    String phoneNumber,
    String smsCode, {
    String? name,
  }) {
    return getNetworkResult(
      () async {
        return _apiService
            .verifyOtp(
          OTPVerifyRequestModel(
            phoneNumber,
            smsCode,
            name,
            _localStorage.deviceToken,
          ),
        )
            .then((value) async {
          await _localStorage.setLogin(true);
          await _localStorage.setAccessToken(value.data.token);
          return value.toEmptyEntity();
        });
      },
    );
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> logout() async {
    return getNetworkResult(
      () async {
        _localStorage.clear();
        return EmptyEntity(true, 'Logout');
      },
    );
  }

  @override
  Future<void> setDeviceToken(String deviceToken) async {
    await _localStorage.setDeviceToken(deviceToken);
  }
}
