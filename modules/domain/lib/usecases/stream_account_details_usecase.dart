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
import 'package:domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/account_details_model.dart';

@injectable
class StreamAccountDetailsUseCaseUseCase {
  StreamAccountDetailsUseCaseUseCase(this._repository);

  final UserRepository _repository;

  Future<Either<NetworkError, AccountDetails>> execute() {
    return _repository.getUserDetails();
  }
}
