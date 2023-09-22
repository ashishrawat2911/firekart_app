import 'package:drift/drift.dart';

class ProductTableEntity extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get image => text()();

  TextColumn get name => text()();

  TextColumn get description => text()();

  TextColumn get unit => text()();

  TextColumn get currency => text()();

  RealColumn get currentPrice => real()();

  RealColumn get actualPrice => real()();

  RealColumn get quantityPerUnit => real()();
}
