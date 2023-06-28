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
import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:fluttercommerce/domain/models/product_model.dart';

abstract class FirebaseRepository {
  Future<AccountDetails> fetchUserDetails();

  Future<void> addUserDetails(AccountDetails accountDetails);

  Future<List<Order>> getAllOrders();

  Future<List<Product>> getAllProducts({String? condition, required bool all});

  Stream<List<Cart>> listenToCart();

  Future<bool> placeOrder(Order order);

  Future<List<Product>> searchProducts(String query);

  Stream<AccountDetails> streamUserDetails();

  Future<bool> addProductToCart(Cart cart);

  Future<void> delProductFromCart(String productId);

  String? getPhoneNumber();

  Future<int> checkItemInCart(String productId);

  Future<bool> checkUserDetail();

  dynamic getCurrentUser();

  Future<void> logoutUser();

  Future<void> setAccountDetails({String? displayName, String? photoUrl});

  Future<bool> sendCode(
    String phoneNumber,
    void Function(String error) onError,
  );

  Future<void> loginWithOtp(
    String smsCode,
    void Function(String error) onError,
  );
}
