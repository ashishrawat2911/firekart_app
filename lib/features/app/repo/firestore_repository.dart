import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/features/common/models/account_details_model.dart';
import 'package:fluttercommerce/features/common/models/cartModel_model.dart';
import 'package:fluttercommerce/features/common/models/order_model.dart';
import 'package:fluttercommerce/features/common/models/product_model.dart';

import 'auth_repository.dart';
import 'package:fluttercommerce/di/di.dart';

class FirestoreRepository {
  var authRepo = DI.container<AuthRepository>();
  final Firestore _firestore = Firestore.instance;

  Future<List<DocumentSnapshot>> getAllProducts(
      [DocumentSnapshot documentSnapshot]) async {
    List<DocumentSnapshot> documentList;
    final query = _firestore.collection("products").limit(20).orderBy("name");

    if (documentSnapshot != null) {
      documentList =
          (await query.startAfterDocument(documentSnapshot).getDocuments())
              .documents;
    } else {
      documentList = (await query.getDocuments()).documents;
    }
    return documentList;
  }

  Future<List<DocumentSnapshot>> getAllOrders(
      [DocumentSnapshot documentSnapshot]) async {
    List<DocumentSnapshot> documentList;
    var query = _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("orders")
        .limit(20)
        .orderBy("ordered_at", descending: true);
    if (documentSnapshot != null) {
      documentList =
          (await query.startAfterDocument(documentSnapshot).getDocuments())
              .documents;
    } else {
      documentList = (await query.getDocuments()).documents;
    }
    return documentList;
  }

  Future<List<DocumentSnapshot>> searchProducts(String query) async {
    List<DocumentSnapshot> documentList = (await _firestore
            .collection("products")
            .where("name_search", arrayContains: query)
            .getDocuments())
        .documents;
    return documentList;
  }

  Future<List<ProductModel>> getProductsData(String condition) async {
    List<DocumentSnapshot> docList = (await _firestore
            .collection("products")
            .where(condition, isEqualTo: true)
            .getDocuments())
        .documents;
    return List.generate(docList.length, (index) {
      return ProductModel.fromJson(docList[index]);
    });
  }

  Future<List<DocumentSnapshot>> getAllProductsData(
    String condition,
  ) async {
    print(condition);
    List<DocumentSnapshot> documentList = (await _firestore
            .collection("products")
            .where(condition, isEqualTo: true)
            .getDocuments())
        .documents;
    return documentList;
  }

  Future<AccountDetails> getAllFaq() async {
    DocumentSnapshot document = await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("account")
        .document("details")
        .get();
    return AccountDetails.fromDocument(document);
  }

  Future<int> checkItemInCart(String productId) async {
    try {
      DocumentSnapshot documentSnapshot = await _firestore
          .collection("users")
          .document(await authRepo.getUid())
          .collection("cart")
          .document(productId)
          .get();
      if (documentSnapshot.exists) {
        return documentSnapshot["no_of_items"] as num;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  Future<void> addProductToCart(CartModel cartModel) async {
    return await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("cart")
        .document(cartModel.productId)
        .setData(cartModel.toJson());
  }

  Future<void> delProductFromCart(String productId) async {
    return await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("cart")
        .document(productId)
        .delete();
  }

  Future<bool> checkUserDetail() async {
    try {
      DocumentSnapshot documentSnapshot = await _firestore
          .collection("users")
          .document(await authRepo.getUid())
          .collection("account")
          .document("details")
          .get();
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
    return await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("account")
        .document("details")
        .setData(accountDetails.toJson());
  }

  Future<AccountDetails> fetchUserDetails() async {
    return AccountDetails.fromDocument(await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("account")
        .document("details")
        .get());
  }

  Stream<DocumentSnapshot> streamUserDetails(String uID) {
    return _firestore
        .collection("users")
        .document(uID)
        .collection("account")
        .document("details")
        .snapshots();
  }

  Stream<QuerySnapshot> cartStatusListen(String uID) {
    return _firestore
        .collection("users")
        .document(uID)
        .collection("cart")
        .snapshots();
  }

  Future<void> placeOrder(OrderModel orderModel) async {
    return await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("orders")
        .document(orderModel.orderId)
        .setData(orderModel.toJson());
  }

  Future<void> emptyCart() async {
    return await _firestore
        .collection("users")
        .document(await authRepo.getUid())
        .collection("cart")
        .getDocuments()
        .then((snapshot) {
      for (DocumentSnapshot doc in snapshot.documents) {
        doc.reference.delete();
      }
    });
  }
}
