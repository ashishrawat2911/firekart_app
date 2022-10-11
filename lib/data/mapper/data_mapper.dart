import 'package:fluttercommerce/data/model/account_details_model.dart';
import 'package:fluttercommerce/data/model/cart_model.dart';
import 'package:fluttercommerce/data/model/order_model.dart';
import 'package:fluttercommerce/data/model/product_model.dart';
import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:injectable/injectable.dart';
import 'package:smartstruct/smartstruct.dart';

import '../../domain/models/account_details_model.dart';
import '../../domain/models/product_model.dart';

part 'data_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class DataMapper {
  AccountDetails accountDetailsFromModel(AccountDetailsModel model);

  AccountDetailsModel accountDetailsToModel(AccountDetails model);

  Address addressFromModel(AddressModel model);

  AddressModel addressToModel(Address model);

  Order orderFromModel(OrderModel model);

  OrderModel orderToModel(Order order);

  OrderItem orderItemFromModel(OrderItemModel model);

  OrderItemModel orderItemToModel(OrderItem model);

  Product productFromModel(ProductModel model);

  ProductModel productToModel(Product model);

  Cart cartFromModel(CartModel model);

  CartModel carToModel(Cart model);

  CartModel cartFromProduct(Product model);
}
