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
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/cart_model.dart';

@injectable
class GetCartStatusUseCase {
  final CartRepository _repository;

  GetCartStatusUseCase(this._repository);

  Future<Either<NetworkError, List<Cart>>> execute() {
    return _repository.getCarts();
  }

  Stream<List<Cart>> watch() {
    return _repository.watchCarts();
  }
}
