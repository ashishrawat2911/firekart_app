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
import 'package:firekart/data/mapper/data_mapper.dart';
import 'package:firekart/data/model/request/otp_verify_request_model.dart';
import 'package:firekart/data/source/local/local_storage.dart';
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/login.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/auth_repository.dart';
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
  Future<Either<NetworkError, void>> verifyOtp(
    String phoneNumber,
    String smsCode, {
    String? name,
  }) {
    return getNetworkResult(
      () async {
        final res = await _apiService.verifyOtp(
          OTPVerifyRequestModel(
            phoneNumber,
            smsCode,
            name,
            _localStorage.deviceToken,
          ),
        );
        await _localStorage.setLogin(true);
        await _localStorage.setAccessToken(res.data.token);
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> logout() async {
    return getNetworkResult(
      () async {
        _localStorage.clear();
      },
    );
  }

  @override
  Future<void> setDeviceToken(String deviceToken) async {
    await _localStorage.setDeviceToken(deviceToken);
  }
}
