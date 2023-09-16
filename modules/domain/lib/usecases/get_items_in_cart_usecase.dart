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
import 'package:domain/models/cart_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@injectable
class GetItemsInCartUseCase {
  GetItemsInCartUseCase();

  int execute(int productId, List<Cart> carts) {
    final c = carts.where((element) {
      return element.productId == productId;
    });
    if (c.isEmpty) return 0;

    return c.first.numOfItems;
  }
}
