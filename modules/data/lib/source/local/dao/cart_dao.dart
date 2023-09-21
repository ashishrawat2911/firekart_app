import 'package:drift/drift.dart';
import 'package:data/source/local/db/firekart_database.dart';
import 'package:data/source/local/model/cart_table_entity.dart';

part 'cart_dao.g.dart';

@DriftAccessor(tables: [CartTableEntity])
class CartDao extends DatabaseAccessor<FirekartDatabase> with _$CartDaoMixin {
  CartDao(FirekartDatabase db) : super(db);

  Stream<List<CartTableEntityData>> watchCarts() {
    return select(cartTableEntity).watch();
  }

  Future<List<CartTableEntityData>> getCarts() {
    return select(cartTableEntity).get();
  }

  Future<void> addCarts(List<CartTableEntityCompanion> carts) async {
    await batch((batch) {
      batch.insertAll(cartTableEntity, carts);
    });
  }

  Future deleteCarts() {
    return delete(cartTableEntity).go();
  }

  Future deleteFromCart(int productId) {
    return (delete(cartTableEntity)
          ..where((t) => t.productId.isValue(productId)))
        .go();
  }

  Future updateCart(int productId, int quantity) {
    return (update(cartTableEntity)
          ..where((t) => t.productId.isValue(productId)))
        .write(
      CartTableEntityCompanion(
        productId: Value(productId),
        numOfItems: Value(quantity),
      ),
    );
  }
}
