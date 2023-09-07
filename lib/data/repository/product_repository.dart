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
import 'package:firekart/data/source/remote/api_service.dart';
import 'package:firekart/domain/models/product_model.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/product_repository.dart';
import 'package:injectable/injectable.dart';

import '../mapper/data_mapper.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl extends ProductRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;

  ProductRepositoryImpl(
    this._dataMapper,
    this._apiService,
  );

  @override
  Future<Either<NetworkError, List<Product>>> getAllProducts() {
    return getNetworkResult(
      () {
        return _apiService.getAllProducts(1, 100).then(
              (value) => value.data.map(_dataMapper.productFromModel).toList(),
            );
      },
    );
  }
}
