import 'package:drift/drift.dart';

class CartTableEntity extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get productId => integer()();

  TextColumn get name => text()();

  TextColumn get image => text()();

  TextColumn get unit => text()();

  TextColumn get currency => text()();

  IntColumn get numOfItems => integer()();

  RealColumn get currentPrice => real()();

  RealColumn get quantityPerUnit => real()();
}
