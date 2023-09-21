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

import 'package:domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class SetDeviceTokenUseCase {
  SetDeviceTokenUseCase(this._repository);

  final AuthRepository _repository;

  Future<void> execute(String deviceToken) {
    return _repository.setDeviceToken(deviceToken);
  }
}
