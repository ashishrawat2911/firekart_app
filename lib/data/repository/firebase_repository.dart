import 'package:fluttercommerce/core/extentions/list_extention.dart';
import 'package:fluttercommerce/data/mapper/data_mapper.dart';
import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:fluttercommerce/domain/models/product_model.dart';
import 'package:injectable/injectable.dart';

import '../service/firebase_service.dart';

@singleton
class FirebaseRepository {
  final DataMapper _mapper;
  final FirebaseService _firebaseService;

  FirebaseRepository(this._mapper, this._firebaseService);

  Future<AccountDetails> fetchUserDetails() async {
    final accounts = await _firebaseService.fetchUserDetails();
    return _mapper.accountDetailsFromModel(accounts);
  }

  Future<void> addUserDetails(AccountDetails accountDetails) {
    return _firebaseService.addUserDetails(_mapper.accountDetailsToModel(accountDetails));
  }

  Future<List<Order>> getAllOrders() async {
    final orders = await _firebaseService.getAllOrders();
    return orders.mapToList((e) => _mapper.orderFromModel(e));
  }

  Future<List<Product>> getAllProducts({String? condition, required bool all}) async {
    final products = await _firebaseService.getAllProducts();
    return products.mapToList((e) => _mapper.productFromModel(e));
  }

  Stream<List<Cart>> listenToCart() {
    return _firebaseService.cartStatusListen().map((event) => event.mapToList((e) => _mapper.cartFromModel(e)));
  }

  Future<void> placeOrder(Order order) async {
    await _firebaseService.placeOrder(_mapper.orderToModel(order));
    await _firebaseService.emptyCart();
  }

  Future<List<Product>> searchProducts(String query) async {
    final products = await _firebaseService.searchProducts(query);
    return products.mapToList((e) => _mapper.productFromModel(e));
  }

  Stream<AccountDetails> streamUserDetails() {
    return _firebaseService.streamUserDetails().map((event) => _mapper.accountDetailsFromModel(event));
  }

  Future<void> addProductToCart(Cart cart) {
    return _firebaseService.addProductToCart(_mapper.carToModel(cart));
  }
}
