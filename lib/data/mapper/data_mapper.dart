import 'package:fluttercommerce/data/model/account_details_model.dart';
import 'package:fluttercommerce/data/model/cart_model.dart';
import 'package:fluttercommerce/data/model/order_model.dart';
import 'package:fluttercommerce/data/model/product_model.dart';
import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:smartstruct/smartstruct.dart';

import '../../domain/models/account_details_model.dart';
import '../../domain/models/product_model.dart';

part 'data_mapper.mapper.g.dart';

@Mapper()
abstract class DataMapper {
  AccountDetails accountDetailsFromModel(AccountDetailsModel model);

  AccountDetailsModel accountDetailsToModel(AccountDetails model);

  Order orderFromModel(OrderModel orderModel);

  OrderModel orderToModel(Order order);

  Product productFromModel(ProductModel productModel);

  Cart cartFromModel(CartModel cartModel);

  CartModel carToModel(Cart cartModel);

  CartModel cartFromProduct(Product product);
}
