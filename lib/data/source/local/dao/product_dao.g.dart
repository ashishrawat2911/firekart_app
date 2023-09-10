// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dao.dart';

// ignore_for_file: type=lint
mixin _$ProductDaoMixin on DatabaseAccessor<FirekartDatabase> {
  $ProductTableEntityTable get productTableEntity =>
      attachedDatabase.productTableEntity;
  Selectable<ProductTableEntityData> getProductsCustomQuery(
      int var1, int var2) {
    return customSelect('SELECT * FROM product_table_entity LIMIT ?1 OFFSET ?2',
        variables: [
          Variable<int>(var1),
          Variable<int>(var2)
        ],
        readsFrom: {
          productTableEntity,
        }).asyncMap(productTableEntity.mapFromRow);
  }
}
