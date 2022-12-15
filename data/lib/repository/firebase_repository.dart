import 'package:core/extentions/list_extention.dart';
import 'package:data/mapper/data_mapper.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/order_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/repository/firebase_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_dependencies/shared_dependencies.dart' hide Order;

import '../service/firebase_service.dart';

@Singleton(as: FirebaseRepository)
class FirebaseRepositoryImpl extends FirebaseRepository {
  final DataMapper _mapper;
  final FirebaseService _firebaseService;

  FirebaseRepositoryImpl(this._mapper, this._firebaseService);

  @override
  Future<AccountDetails> fetchUserDetails() async {
    final accounts = await _firebaseService.fetchUserDetails();
    return _mapper.accountDetailsFromModel(accounts);
  }

  @override
  Future<void> addUserDetails(AccountDetails accountDetails) {
    return _firebaseService
        .addUserDetails(_mapper.accountDetailsToModel(accountDetails));
  }

  @override
  Future<List<Order>> getAllOrders() async {
    final orders = await _firebaseService.getAllOrders();
    return orders.mapToList(_mapper.orderFromModel);
  }

  @override
  Future<List<Product>> getAllProducts({
    String? condition,
    required bool all,
  }) async {
    final products = await _firebaseService.getAllProducts();
    return products.mapToList(_mapper.productFromModel);
  }

  @override
  Stream<List<Cart>> listenToCart() {
    return _firebaseService
        .cartStatusListen()
        .map((event) => event.mapToList(_mapper.cartFromModel));
  }

  @override
  Future<void> placeOrder(Order order) async {
    await _firebaseService.placeOrder(_mapper.orderToModel(order));
    await _firebaseService.emptyCart();
  }

  @override
  Future<List<Product>> searchProducts(String query) async {
    final products = await _firebaseService.searchProducts(query);
    return products.mapToList(_mapper.productFromModel);
  }

  @override
  Stream<AccountDetails> streamUserDetails() {
    return _firebaseService
        .streamUserDetails()
        .map(_mapper.accountDetailsFromModel);
  }

  @override
  Future<void> addProductToCart(Cart cart) {
    return _firebaseService.addProductToCart(_mapper.carToModel(cart));
  }

  @override
  Future<void> delProductFromCart(String productId) {
    return _firebaseService.delProductFromCart(productId);
  }

  @override
  String? getPhoneNumber() {
    return _firebaseService.getPhoneNumber();
  }

  @override
  Future<int> checkItemInCart(String productId) {
    return _firebaseService.checkItemInCart(productId);
  }

  @override
  Future<bool> checkUserDetail() {
    return _firebaseService.checkUserDetail();
  }

  @override
  User? getCurrentUser() {
    return _firebaseService.getCurrentUser();
  }

  @override
  Future<void> logoutUser() {
    return _firebaseService.logoutUser();
  }
}
