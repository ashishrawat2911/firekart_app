import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:data/source/local/dao/product_dao.dart';
import 'package:data/source/local/model/cart_table_entity.dart';
import 'package:data/source/local/model/product_table_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../dao/cart_dao.dart';

part 'firekart_database.g.dart';

@singleton
@DriftDatabase(
  tables: [
    CartTableEntity,
    ProductTableEntity,
  ],
  daos: [
    CartDao,
    ProductDao,
  ],
)
class FirekartDatabase extends _$FirekartDatabase {
  FirekartDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @disposeMethod
  Future<void> closeDatabase() {
    return close();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
