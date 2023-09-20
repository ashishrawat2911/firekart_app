import 'package:data/source/local/db/firekart_database.dart';
import 'package:data/source/local/model/product_table_entity.dart';
import 'package:drift/drift.dart';

part 'product_dao.g.dart';

@DriftAccessor(
  tables: [ProductTableEntity],
  queries: {
    'getProductsCustomQuery':
        'SELECT * FROM product_table_entity LIMIT ? OFFSET ?',
  },
)
class ProductDao extends DatabaseAccessor<FirekartDatabase>
    with _$ProductDaoMixin {
  ProductDao(FirekartDatabase db) : super(db);

  Future<ProductTableEntityData> getProductById(int id) {
    return (select(productTableEntity)..where((t) => t.id.equals(id)))
        .getSingle();
  }

  Future<List<ProductTableEntityData>> getProducts(int page, int limit) {
    // return getProductsCustomQuery(limit, offset).get();
    return (select(productTableEntity)
          ..limit(limit, offset: (page - 1) * limit))
        .get();
  }

  Future<void> addProducts(List<ProductTableEntityCompanion> products) async {
    await batch((batch) {
      batch.insertAll(
        productTableEntity,
        products,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  Future<List<ProductTableEntityData>> getProductsByQuery(String query) {
    return (select(productTableEntity)..where((t) => t.name.contains(query)))
        .get();
  }
}
