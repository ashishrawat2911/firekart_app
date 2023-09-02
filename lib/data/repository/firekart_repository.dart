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
import 'package:firekart/core/logger/app_logger.dart';
import 'package:firekart/data/error/network_error_handler.dart';
import 'package:firekart/data/model/request/otp_verify_request_model.dart';
import 'package:firekart/data/source/local/local_storage.dart';
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/add_order_model.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/models/login.dart';
import 'package:firekart/domain/models/order_model.dart';
import 'package:firekart/domain/models/product_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/firekart_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../mapper/data_mapper.dart';

@Injectable(as: FirekartRepository)
class FirekartRepositoryImpl extends FirekartRepository {
  final LocalStorage _localStorage;
  final DataMapper _dataMapper;
  final NetworkErrorHandler _errorHandler;
  final ApiService _apiService;

  FirekartRepositoryImpl(
    this._localStorage,
    this._dataMapper,
    this._errorHandler,
    this._apiService,
  );

  Future<Either<NetworkError, T>> getNetworkResult<T>(
    Future<T> Function() on,
  ) async {
    try {
      final res = await on();
      return Right(res);
    } catch (e, s) {
      AppLogger.log(e);
      final networkError = _errorHandler.getNetworkError(e, s);
      AppLogger.log(networkError);
      return Left(networkError);
    }
  }

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
          OTPVerifyRequestModel(phoneNumber, smsCode, name),
        );
        await _localStorage.setLogin(true);
        await _localStorage.setAccessToken(res.data.token);
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
  Future<Either<NetworkError, List<Product>>> getAllProducts() {
    return getNetworkResult(
      () {
        return _apiService.getAllProducts(1, 10).then(
              (value) => value.data.map(_dataMapper.productFromModel).toList(),
            );
      },
    );
  }

  @override
  Future<Either<NetworkError, AccountDetails>> getUserDetails() {
    return getNetworkResult(
      () {
        return _apiService.userDetails().then(
              (value) => _dataMapper.accountDetailsFromModel(value.data),
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
  Future<Either<NetworkError, List<Address>>> fetchUserAddress() {
    return getNetworkResult(
      () {
        return _apiService.userAddress().then(
              (value) => value.data.map(_dataMapper.addressFromModel).toList(),
            );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> addAddress(AddAddress address) {
    return getNetworkResult(
      () {
        return _apiService.addAddress(
          address.address,
          address.state,
          address.name,
          address.phoneNumber,
          address.city,
          address.pincode,
          address.isDefault,
        );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> editAddress(EditAddress address) {
    return getNetworkResult(
      () {
        return _apiService.editAddress(
          address.id,
          address.name,
          address.pincode,
          address.address,
          address.city,
          address.state,
          address.phoneNumber,
          address.isDefault,
        );
      },
    );
  }

  @override
  Future<Either<NetworkError, void>> placeOrder(AddOrder order) {
    return getNetworkResult(
      () {
        return _apiService.placeOrder(_dataMapper.addOrderToModel(order));
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

  @override
  Future<Either<NetworkError, void>> logout() async {
    return getNetworkResult(
      () async {
        _localStorage.clear();
      },
    );
  }
}
