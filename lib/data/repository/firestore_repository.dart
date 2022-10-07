import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fluttercommerce/core/logger/app_logger.dart';
import 'package:fluttercommerce/data/models/account_details_model.dart';
import 'package:fluttercommerce/data/models/cart_model.dart';
import 'package:fluttercommerce/data/models/order_model.dart';
import 'package:fluttercommerce/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  CollectionReference get _productCollection {
    AppLogger.log('Fetching products collection');
    return _firestore.collection("products");
  }

  CollectionReference get _orderCollection {
    AppLogger.log('Fetching orders collection');
    return _firestore.collection("users").doc(getUid()).collection("orders");
  }

  DocumentReference get _accountDetailDoc {
    AppLogger.log('Fetching account detail');
    return _firestore.collection("users").doc(getUid()).collection("account").doc("details");
  }

  CollectionReference get _cartCollection => _firestore.collection("users").doc(getUid()).collection("cart");

  Future<bool> sendCode(
    String phoneNumber, {
    required PhoneVerificationCompleted verificationCompleted,
    required PhoneVerificationFailed verificationFailed,
    required PhoneCodeSent codeSent,
    required PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout,
  }) async {
    try {
      return firebaseAuth
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

  Future<List<DocumentSnapshot>> getAllOrders([DocumentSnapshot? documentSnapshot]) async {
    List<DocumentSnapshot> documentList;
    final query = _orderCollection.limit(20).orderBy("ordered_at", descending: true);
    if (documentSnapshot != null) {
      documentList = (await query.startAfterDocument(documentSnapshot).get()).docs;
    } else {
      documentList = (await query.get()).docs;
    }
    return documentList;
  }

  Future<List<DocumentSnapshot>> searchProducts(String query) async {
    final List<DocumentSnapshot> documentList =
        (await _firestore.collection("products").where("name_search", arrayContains: query).get()).docs;
    return documentList;
  }

  Future<List<ProductModel>> getProductsData(String condition) async {
    final List<DocumentSnapshot> docList = (await _productCollection.where(condition, isEqualTo: true).get()).docs;
    return List.generate(docList.length, (index) {
      return ProductModel.fromJson(docList[index].data());
    });
  }

  Future<List<DocumentSnapshot>> getAllProducts({
    DocumentSnapshot? documentSnapshot,
    String? condition,
    bool all = false,
  }) async {
    if (all == true) {
      if (condition != null) {
        return (await _productCollection.where(condition, isEqualTo: true).get()).docs;
      } else {
        return (await _productCollection.get()).docs;
      }
    }
    List<DocumentSnapshot> documentList;
    var query = _productCollection.limit(20).orderBy("name");
    if (condition != null) {
      query = query.where(condition, isEqualTo: true);
    }
    if (documentSnapshot != null) {
      documentList = (await query.startAfterDocument(documentSnapshot).get()).docs;
    } else {
      documentList = (await query.get()).docs;
    }
    return documentList;
  }

  Future<List<DocumentSnapshot>> getAllProductsData(
    String condition,
  ) async {
    final List<DocumentSnapshot> documentList = (await _productCollection.where(condition, isEqualTo: true).get()).docs;
    return documentList;
  }

  Future<AccountDetailsModel> getAllFaq() async {
    final DocumentSnapshot document = await _accountDetailDoc.get();
    return AccountDetailsModel.fromDocument(document.data());
  }

  Future<int> checkItemInCart(String productId) async {
    try {
      final DocumentSnapshot documentSnapshot = await _cartCollection.doc(productId).get();
      if (documentSnapshot.exists) {
        return documentSnapshot["num_of_items"] as int;
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
    return AccountDetailsModel.fromDocument((await _accountDetailDoc.get()).data());
  }

  Stream<DocumentSnapshot> streamUserDetails(String uID) {
    return _accountDetailDoc.snapshots();
  }

  Stream<QuerySnapshot> cartStatusListen(String uID) {
    return _cartCollection.snapshots();
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
    final User? user = firebaseAuth.currentUser;
    return user;
  }

  String? getPhoneNumber() {
    AppLogger.log('Fetching Phone Number');
    return getCurrentUser()!.phoneNumber;
  }

  Future<void> logoutUser() async {
    AppLogger.log('Logging out....');
    return firebaseAuth.signOut();
  }
}
