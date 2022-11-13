import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fluttercommerce/core/extentions/list_extention.dart';
import 'package:fluttercommerce/core/logger/app_logger.dart';
import 'package:fluttercommerce/data/model/account_details_model.dart';
import 'package:fluttercommerce/data/model/cart_model.dart';
import 'package:fluttercommerce/data/model/order_model.dart';
import 'package:fluttercommerce/data/model/product_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseService {
  final FirebaseFirestore _firebaseFireStore;

  final FirebaseAuth _firebaseAuth;

  FirebaseService(this._firebaseFireStore, this._firebaseAuth);

  CollectionReference get _productCollection {
    AppLogger.log('Fetching products collection');
    return _firebaseFireStore.collection("products");
  }

  CollectionReference get _orderCollection {
    AppLogger.log('Fetching orders collection');
    return _firebaseFireStore
        .collection("users")
        .doc(getUid())
        .collection("orders");
  }

  DocumentReference get _accountDetailDoc {
    AppLogger.log('Fetching account detail');
    return _firebaseFireStore
        .collection("users")
        .doc(getUid())
        .collection("account")
        .doc("details");
  }

  CollectionReference get _cartCollection =>
      _firebaseFireStore.collection("users").doc(getUid()).collection("cart");

  Future<bool> sendCode(
    String phoneNumber, {
    required PhoneVerificationCompleted verificationCompleted,
    required PhoneVerificationFailed verificationFailed,
    required PhoneCodeSent codeSent,
    required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
  }) async {
    try {
      return _firebaseAuth
          .verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      )
          .then((value) {
        return true;
      }).catchError((e) {
        return false;
      });
    } on PlatformException {
      return false;
    }
  }

  Future<void> setAccountDetails({
    String? displayName,
    String? photoUrl,
  }) async {
    (getCurrentUser())!
      ..updatePhotoURL(photoUrl)
      ..updateDisplayName(displayName);
  }

  Future<List<OrderModel>> getAllOrders() async {
    final query = _orderCollection.orderBy("ordered_at", descending: true);
    final documentList = (await query.get()).docs;
    return documentList.map((e) => OrderModel.fromJson(e.data())).toList();
  }

  Future<List<ProductModel>> searchProducts(String query) async {
    final List<DocumentSnapshot> documentList = (await _firebaseFireStore
            .collection("products")
            .where("name_search", arrayContains: query)
            .get())
        .docs;
    return documentList.mapToList((e) => ProductModel.fromJson(e.data()));
  }

  Future<List<ProductModel>> getProductsData(String condition) async {
    final List<DocumentSnapshot> docList =
        (await _productCollection.where(condition, isEqualTo: true).get()).docs;
    return List.generate(docList.length, (index) {
      return ProductModel.fromJson(docList[index].data());
    });
  }

  Future<List<ProductModel>> getAllProducts({
    String? condition,
    bool all = false,
  }) async {
    List<DocumentSnapshot> documentList;

    if (all == true) {
      if (condition != null) {
        return (await _productCollection
                .where(condition, isEqualTo: true)
                .get())
            .docs
            .map((e) => ProductModel.fromJson(e.data()))
            .toList();
      } else {
        return (await _productCollection.get())
            .docs
            .map((e) => ProductModel.fromJson(e.data()))
            .toList();
      }
    }
    var query = _productCollection.orderBy("name");
    if (condition != null) {
      query = query.where(condition, isEqualTo: true);
    }

    documentList = (await query.get()).docs;
    return documentList.map((e) => ProductModel.fromJson(e.data())).toList();
  }

  Future<List<DocumentSnapshot>> getAllProductsData(
    String condition,
  ) async {
    final List<DocumentSnapshot> documentList =
        (await _productCollection.where(condition, isEqualTo: true).get()).docs;
    return documentList;
  }

  Future<AccountDetailsModel> getAllFaq() async {
    final DocumentSnapshot document = await _accountDetailDoc.get();
    return AccountDetailsModel.fromDocument(document.data());
  }

  Future<int> checkItemInCart(String productId) async {
    try {
      final DocumentSnapshot documentSnapshot =
          await _cartCollection.doc(productId).get();
      if (documentSnapshot.exists) {
        final CartModel cartModel = CartModel.fromJson(documentSnapshot.data());
        return cartModel.numOfItems;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  Future<void> addProductToCart(CartModel cartModel) async {
    return _cartCollection.doc(cartModel.productId).set(cartModel.toJson());
  }

  Future<void> delProductFromCart(String productId) async {
    return _cartCollection.doc(productId).delete();
  }

  Future<bool> checkUserDetail() async {
    try {
      final DocumentSnapshot documentSnapshot = await _accountDetailDoc.get();
      if (documentSnapshot.exists) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<void> addUserDetails(AccountDetailsModel accountDetails) async {
    return _accountDetailDoc.set(accountDetails.toJson());
  }

  Future<AccountDetailsModel> fetchUserDetails() async {
    return AccountDetailsModel.fromDocument(
        (await _accountDetailDoc.get()).data());
  }

  Stream<AccountDetailsModel> streamUserDetails() {
    return _accountDetailDoc
        .snapshots()
        .map((event) => AccountDetailsModel.fromDocument(event.data()));
  }

  Stream<List<CartModel>> cartStatusListen() {
    return _cartCollection.snapshots().map((event) =>
        event.docs.map((e) => CartModel.fromJson(e.data())).toList());
  }

  Future<void> placeOrder(OrderModel orderModel) async {
    return _orderCollection.doc(orderModel.orderId).set(orderModel.toJson());
  }

  Future<void> emptyCart() async {
    return _cartCollection.get().then((snapshot) {
      for (final DocumentSnapshot doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }

  String getUid() {
    AppLogger.log('Fetching UID');
    return getCurrentUser()!.uid;
  }

  User? getCurrentUser() {
    AppLogger.log('Fetching Current User');
    final User? user = _firebaseAuth.currentUser;
    return user;
  }

  String? getPhoneNumber() {
    AppLogger.log('Fetching Phone Number');
    return getCurrentUser()!.phoneNumber;
  }

  Future<void> logoutUser() async {
    AppLogger.log('Logging out....');
    return _firebaseAuth.signOut();
  }
}
