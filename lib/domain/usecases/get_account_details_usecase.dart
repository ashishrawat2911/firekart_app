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
import 'package:firekart/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/account_details_model.dart';

@injectable
class GetAccountDetailsUseCase {
  GetAccountDetailsUseCase(this._firebaseRepository);

  final FirebaseRepository _firebaseRepository;

  Future<AccountDetails> execute() {
    return _firebaseRepository.fetchUserDetails();
  }
}
