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
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

import '../mapper/data_mapper.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;

  UserRepositoryImpl(
    this._dataMapper,
    this._apiService,
  );

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
  Future<Either<NetworkError, EmptyEntity>> addAddress(AddAddress address) {
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
        ).then((value){
          return value.toEntity();
        });
      },
    );
  }

  @override
  Future<Either<NetworkError, EmptyEntity>> editAddress(EditAddress address) {
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
        ).then((value){
          return value.toEntity();
        });
      },
    );
  }
}
