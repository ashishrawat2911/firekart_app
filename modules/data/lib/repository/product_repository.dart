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
import 'package:drift/drift.dart';
import 'package:core/connectivity/network_connectivity.dart';
import 'package:core/extentions/list_extention.dart';
import 'package:data/error/network_handler.dart';
import 'package:data/source/local/dao/product_dao.dart';
import 'package:data/source/local/db/firekart_database.dart';
import 'package:data/source/remote/api_service.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:injectable/injectable.dart';

import '../mapper/data_mapper.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl extends ProductRepository {
  final DataMapper _dataMapper;
  final ApiService _apiService;
  final ProductDao _productDao;
  final NetworkConnectivity _connectivity;

  ProductRepositoryImpl(
    this._dataMapper,
    this._apiService,
    this._productDao,
    this._connectivity,
  );

  @override
  Future<Either<NetworkError, List<Product>>> getAllProducts(
    int page,
    int limit,
  ) {
    return getNetworkResult(
      () async {
        if (_connectivity.hasConnection) {
          final products = await _apiService.getAllProducts(page, limit).then(
                (value) =>
                    value.data.map(_dataMapper.productFromModel).toList(),
              );
          await addProductToDB(products);
          return products;
        } else {
          return _productDao.getProducts(page, limit).then(
            (value) {
              return value.map(_dataMapper.productFromDB).toList();
            },
          );
        }
      },
    );
  }

  Future addProductToDB(List<Product> products) async {
    await _productDao.addProducts(
      products.mapToList(
        (e) {
          return ProductTableEntityCompanion.insert(
            id: Value(e.productId),
            unit: e.unit,
            quantityPerUnit: e.quantityPerUnit.toDouble(),
            image: e.image,
            currentPrice: e.currentPrice.toDouble(),
            currency: e.currency,
            name: e.name,
            description: e.description,
            actualPrice: e.actualPrice.toDouble(),
          );
        },
      ),
    );
  }

  @override
  Future<Either<NetworkError, Product>> getProductsDetails(int productId) {
    return getNetworkResult(
      () async {
        return _productDao
            .getProductById(productId)
            .then(_dataMapper.productFromDB);
      },
    );
  }

  @override
  Future<Either<NetworkError, List<Product>>> getProductsByQuery(String query) {
    return getNetworkResult(
      () async {
        return _productDao.getProductsByQuery(query).then(
              (value) => value.map(_dataMapper.productFromDB).toList(),
            );
      },
    );
  }
}
