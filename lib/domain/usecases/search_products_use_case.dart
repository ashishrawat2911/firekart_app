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
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

import '../models/product_model.dart';

@injectable
class SearchProductsUseCase {
  final FirebaseRepository _firebaseRepository;

  SearchProductsUseCase(this._firebaseRepository);

  Future<List<Product>> execute(String query) async {
    return _firebaseRepository.searchProducts(query);
  }
}
