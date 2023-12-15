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
import 'package:data/model/account_details_model.dart';
import 'package:data/model/address_model.dart';
import 'package:data/model/cart_model.dart';
import 'package:data/model/order_model.dart';
import 'package:data/model/product_model.dart';
import 'package:data/model/request/add_order_request_model.dart';
import 'package:data/model/response/login_response_model.dart';
import 'package:data/source/local/db/firekart_database.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/add_order_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/login.dart';
import 'package:domain/models/order_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:injectable/injectable.dart' hide Order;

@Singleton()
class DataMapper {
  AccountDetails accountDetailsFromModel(AccountDetailsModel model) {
    final accountdetails = AccountDetails(
      id: model.id,
      name: model.name,
      phoneNumber: model.phoneNumber,
    );
    return accountdetails;
  }

  AccountDetailsModel accountDetailsToModel(AccountDetails model) {
    final accountdetailsmodel = AccountDetailsModel(
      model.id,
      model.name,
      model.phoneNumber,
    );
    return accountdetailsmodel;
  }

  Address addressFromModel(AddressModel model) {
    final address = Address(
      id: model.id,
      name: model.name,
      pincode: model.pincode,
      address: model.address,
      city: model.city,
      state: model.state,
      phoneNumber: model.phoneNumber,
      isDefault: model.isDefault,
    );
    return address;
  }

  AddressModel addressToModel(Address model) {
    final addressmodel = AddressModel(
      model.id,
      model.name,
      model.pincode,
      model.address,
      model.city,
      model.state,
      model.phoneNumber,
      model.isDefault,
    );
    return addressmodel;
  }

  Order orderFromModel(OrderModel model) {
    final order = Order(
      id: model.id,
      price: model.price,
      orderedAt: model.orderedAt,
      orderStatus: model.orderStatus,
      paymentId: model.paymentId,
      signature: model.signature,
    );
    return order;
  }

  OrderModel orderToModel(Order order) {
    final ordermodel = OrderModel(
      order.id,
      order.price,
      order.orderedAt,
      order.orderStatus,
      order.paymentId,
      order.signature,
    );
    return ordermodel;
  }

  OrderItem orderItemFromModel(OrderItemModel model) {
    final orderitem = OrderItem(
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      price: model.price,
      noOfItems: model.noOfItems,
    );
    return orderitem;
  }

  OrderItemModel orderItemToModel(OrderItem model) {
    final orderitemmodel = OrderItemModel(
      model.productId,
      model.image,
      model.name,
      model.unit,
      model.currency,
      model.price,
      model.noOfItems,
    );
    return orderitemmodel;
  }

  Product productFromModel(ProductModel model) {
    final product = Product(
      // nameSearch: model.nameSearch.map((e) => e).toList(),
      productId: model.id,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      // onSale: model.onSale,
      currentPrice: model.currentPrice,
      actualPrice: model.actualPrice,
      quantityPerUnit: model.quantityPerUnit,
      description: model.description,
      // isProductAvailable: model.isProductAvailable,
    );
    return product;
  }

  Product productFromDB(ProductTableEntityData model) {
    final product = Product(
      productId: model.id,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      currentPrice: model.currentPrice,
      actualPrice: model.actualPrice,
      quantityPerUnit: model.quantityPerUnit,
      description: model.description,
    );
    return product;
  }

  ProductModel productToModel(Product model) {
    final productmodel = ProductModel(
      model.productId,
      model.image,
      model.name,
      model.description,
      model.unit,
      model.currency,
      model.currentPrice,
      model.actualPrice,
      model.quantityPerUnit,
    );
    return productmodel;
  }

  Cart cartFromDBModel(CartTableEntityData model) {
    final cart = Cart(
      name: model.name,
      currency: model.currency,
      currentPrice: model.currentPrice,
      image: model.image,
      numOfItems: model.numOfItems,
      productId: model.productId,
      quantityPerUnit: model.quantityPerUnit,
      unit: model.unit,
    );
    return cart;
  }

  Cart cartFromModel(CartModel model) {
    final cart = Cart(
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      currentPrice: model.currentPrice,
      quantityPerUnit: model.quantityPerUnit,
      numOfItems: model.quantity,
    );
    return cart;
  }

  CartModel carToModel(Cart model) {
    final cartmodel = CartModel(
      model.productId,
      model.image,
      model.name,
      model.unit,
      model.currency,
      model.currentPrice,
      model.quantityPerUnit,
      model.numOfItems,
    );
    return cartmodel;
  }

  // CartModel cartFromProduct(Product model) {
  //   final cartmodel = CartModel(
  //     model.productId,
  //     model.image,
  //     model.name,
  //     model.unit,
  //     model.currency,
  //     // model.currentPrice,
  //     model.quantityPerUnit,
  //   );
  //   return cartmodel;
  // }

  Login loginFromModel(LoginResponseModel model) {
    return Login(model.otp, model.newUser);
  }

  AddOrderRequestModel addOrderToModel(AddOrder addOrder) {
    return AddOrderRequestModel(
      orderedAt: addOrder.orderedAt,
      orderStatus: addOrder.orderStatus,
      paymentId: addOrder.paymentId,
      price: addOrder.price,
      signature: addOrder.signature,
      orderItems: addOrder.orderItems
          .map(
            (e) => AddOrderItemRequestModel(
              productId: e.productId,
              price: e.price,
              noOfItems: e.noOfItems,
            ),
          )
          .toList(),
    );
  }
}
