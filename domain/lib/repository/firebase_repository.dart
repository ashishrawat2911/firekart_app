import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/order_model.dart';
import 'package:domain/models/product_model.dart';

abstract class FirebaseRepository {
  Future<AccountDetails> fetchUserDetails();

  Future<void> addUserDetails(AccountDetails accountDetails);

  Future<List<Order>> getAllOrders();

  Future<List<Product>> getAllProducts({String? condition, required bool all});

  Stream<List<Cart>> listenToCart();

  Future<void> placeOrder(Order order);

  Future<List<Product>> searchProducts(String query);

  Stream<AccountDetails> streamUserDetails();

  Future<void> addProductToCart(Cart cart);

  Future<void> delProductFromCart(String productId);

  String? getPhoneNumber();

  Future<int> checkItemInCart(String productId);

  Future<bool> checkUserDetail();

  dynamic getCurrentUser();

  Future<void> logoutUser();

  Future<void> setAccountDetails({String? displayName, String? photoUrl});

  Future<bool> sendCode(
    String phoneNumber, {
    required Function verificationCompleted,
    required Function verificationFailed,
    required Function codeSent,
    required Function codeAutoRetrievalTimeout,
  });
}
