import 'package:core/core.dart';
import 'package:flutter/services.dart';
import 'package:network/network.dart';

mixin FirebaseMixin {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  CollectionReference get productCollection {
    AppLogger.log('Fetching products collection');
    return _firestore.collection("products");
  }

  CollectionReference get orderCollection {
    AppLogger.log('Fetching orders collection');
    return _firestore.collection("users").doc(getUid()).collection("orders");
  }

  DocumentReference get accountDetailDoc {
    AppLogger.log('Fetching account detail');
    return _firestore.collection("users").doc(getUid()).collection("account").doc("details");
  }

  CollectionReference get cartCollection => _firestore.collection("users").doc(getUid()).collection("cart");

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

class FirebaseManager with FirebaseMixin {
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

  Future<bool> checkUserLoggedInStatus() async {
    try {
      final user = getCurrentUser();
      if (user == null) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      return false;
    }
  }

  Future<List<DocumentSnapshot>> getAllProducts([DocumentSnapshot? documentSnapshot]) async {
    List<DocumentSnapshot> documentList;
    final query = productCollection.limit(20).orderBy("name");

    if (documentSnapshot != null) {
      documentList = (await query.startAfterDocument(documentSnapshot).get()).docs;
    } else {
      documentList = (await query.get()).docs;
    }
    return documentList;
  }

  Future<List<DocumentSnapshot>> getAllOrders([DocumentSnapshot? documentSnapshot]) async {
    List<DocumentSnapshot> documentList;
    final query = orderCollection.limit(20).orderBy("ordered_at", descending: true);
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
    final List<DocumentSnapshot> docList = (await productCollection.where(condition, isEqualTo: true).get()).docs;
    return List.generate(docList.length, (index) {
      return ProductModel.fromJson(docList[index].data());
    });
  }

  Future<List<DocumentSnapshot>> getAllProductsData(
    String condition,
  ) async {
    final List<DocumentSnapshot> documentList = (await productCollection.where(condition, isEqualTo: true).get()).docs;
    return documentList;
  }

  Future<AccountDetails> getAllFaq() async {
    final DocumentSnapshot document = await accountDetailDoc.get();
    return AccountDetails.fromDocument(document.data());
  }

  Future<int> checkItemInCart(String productId) async {
    try {
      final DocumentSnapshot documentSnapshot = await cartCollection.doc(productId).get();
      if (documentSnapshot.exists) {
        return documentSnapshot["no_of_items"] as int;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  Future<void> addProductToCart(CartModel cartModel) async {
    return cartCollection.doc(cartModel.productId).set(cartModel.toJson());
  }

  Future<void> delProductFromCart(String productId) async {
    return cartCollection.doc(productId).delete();
  }

  Future<bool> checkUserDetail() async {
    try {
      final DocumentSnapshot documentSnapshot =
          await _firestore.collection("users").doc(getUid()).collection("account").doc("details").get();
      if (documentSnapshot.exists) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<void> addUserDetails(AccountDetails accountDetails) async {
    return accountDetailDoc.set(accountDetails.toJson());
  }

  Future<AccountDetails> fetchUserDetails() async {
    return AccountDetails.fromDocument((await accountDetailDoc.get()).data());
  }

  Stream<DocumentSnapshot> streamUserDetails(String uID) {
    return accountDetailDoc.snapshots();
  }

  Stream<QuerySnapshot> cartStatusListen(String uID) {
    return cartCollection.snapshots();
  }

  Future<void> placeOrder(OrderModel orderModel) async {
    return orderCollection.doc(orderModel.orderId).set(orderModel.toJson());
  }

  Future<void> emptyCart() async {
    return cartCollection.get().then((snapshot) {
      for (final DocumentSnapshot doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }
}
