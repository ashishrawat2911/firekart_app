/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;

@injectable
class GetAllOrdersUseCase {
  final FirebaseRepository _firebaseRepository;

  GetAllOrdersUseCase(this._firebaseRepository);

  Future<List<Order>> execute({bool nextOrder = false}) async {
    return _firebaseRepository.getAllOrders();
  }
}
