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
import 'package:data/source/local/dao/cart_dao.dart';
import 'package:data/source/local/dao/product_dao.dart';
import 'package:data/source/local/db/firekart_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  CartDao getCartDao(FirekartDatabase firekartDatabase) {
    return firekartDatabase.cartDao;
  }

  ProductDao getProductDao(FirekartDatabase firekartDatabase) {
    return firekartDatabase.productDao;
  }
}
