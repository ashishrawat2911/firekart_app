// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firekart_database.dart';

// ignore_for_file: type=lint
class $CartTableEntityTable extends CartTableEntity
    with TableInfo<$CartTableEntityTable, CartTableEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartTableEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
      'currency', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numOfItemsMeta =
      const VerificationMeta('numOfItems');
  @override
  late final GeneratedColumn<int> numOfItems = GeneratedColumn<int>(
      'num_of_items', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _currentPriceMeta =
      const VerificationMeta('currentPrice');
  @override
  late final GeneratedColumn<double> currentPrice = GeneratedColumn<double>(
      'current_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _quantityPerUnitMeta =
      const VerificationMeta('quantityPerUnit');
  @override
  late final GeneratedColumn<double> quantityPerUnit = GeneratedColumn<double>(
      'quantity_per_unit', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productId,
        name,
        image,
        unit,
        currency,
        numOfItems,
        currentPrice,
        quantityPerUnit
      ];
  @override
  String get aliasedName => _alias ?? 'cart_table_entity';
  @override
  String get actualTableName => 'cart_table_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<CartTableEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('num_of_items')) {
      context.handle(
          _numOfItemsMeta,
          numOfItems.isAcceptableOrUnknown(
              data['num_of_items']!, _numOfItemsMeta));
    } else if (isInserting) {
      context.missing(_numOfItemsMeta);
    }
    if (data.containsKey('current_price')) {
      context.handle(
          _currentPriceMeta,
          currentPrice.isAcceptableOrUnknown(
              data['current_price']!, _currentPriceMeta));
    } else if (isInserting) {
      context.missing(_currentPriceMeta);
    }
    if (data.containsKey('quantity_per_unit')) {
      context.handle(
          _quantityPerUnitMeta,
          quantityPerUnit.isAcceptableOrUnknown(
              data['quantity_per_unit']!, _quantityPerUnitMeta));
    } else if (isInserting) {
      context.missing(_quantityPerUnitMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartTableEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartTableEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit'])!,
      currency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency'])!,
      numOfItems: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}num_of_items'])!,
      currentPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}current_price'])!,
      quantityPerUnit: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}quantity_per_unit'])!,
    );
  }

  @override
  $CartTableEntityTable createAlias(String alias) {
    return $CartTableEntityTable(attachedDatabase, alias);
  }
}

class CartTableEntityData extends DataClass
    implements Insertable<CartTableEntityData> {
  final int id;
  final int productId;
  final String name;
  final String image;
  final String unit;
  final String currency;
  final int numOfItems;
  final double currentPrice;
  final double quantityPerUnit;
  const CartTableEntityData(
      {required this.id,
      required this.productId,
      required this.name,
      required this.image,
      required this.unit,
      required this.currency,
      required this.numOfItems,
      required this.currentPrice,
      required this.quantityPerUnit});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['unit'] = Variable<String>(unit);
    map['currency'] = Variable<String>(currency);
    map['num_of_items'] = Variable<int>(numOfItems);
    map['current_price'] = Variable<double>(currentPrice);
    map['quantity_per_unit'] = Variable<double>(quantityPerUnit);
    return map;
  }

  CartTableEntityCompanion toCompanion(bool nullToAbsent) {
    return CartTableEntityCompanion(
      id: Value(id),
      productId: Value(productId),
      name: Value(name),
      image: Value(image),
      unit: Value(unit),
      currency: Value(currency),
      numOfItems: Value(numOfItems),
      currentPrice: Value(currentPrice),
      quantityPerUnit: Value(quantityPerUnit),
    );
  }

  factory CartTableEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartTableEntityData(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      unit: serializer.fromJson<String>(json['unit']),
      currency: serializer.fromJson<String>(json['currency']),
      numOfItems: serializer.fromJson<int>(json['numOfItems']),
      currentPrice: serializer.fromJson<double>(json['currentPrice']),
      quantityPerUnit: serializer.fromJson<double>(json['quantityPerUnit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'unit': serializer.toJson<String>(unit),
      'currency': serializer.toJson<String>(currency),
      'numOfItems': serializer.toJson<int>(numOfItems),
      'currentPrice': serializer.toJson<double>(currentPrice),
      'quantityPerUnit': serializer.toJson<double>(quantityPerUnit),
    };
  }

  CartTableEntityData copyWith(
          {int? id,
          int? productId,
          String? name,
          String? image,
          String? unit,
          String? currency,
          int? numOfItems,
          double? currentPrice,
          double? quantityPerUnit}) =>
      CartTableEntityData(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        name: name ?? this.name,
        image: image ?? this.image,
        unit: unit ?? this.unit,
        currency: currency ?? this.currency,
        numOfItems: numOfItems ?? this.numOfItems,
        currentPrice: currentPrice ?? this.currentPrice,
        quantityPerUnit: quantityPerUnit ?? this.quantityPerUnit,
      );
  @override
  String toString() {
    return (StringBuffer('CartTableEntityData(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('unit: $unit, ')
          ..write('currency: $currency, ')
          ..write('numOfItems: $numOfItems, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('quantityPerUnit: $quantityPerUnit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId, name, image, unit, currency,
      numOfItems, currentPrice, quantityPerUnit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartTableEntityData &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.name == this.name &&
          other.image == this.image &&
          other.unit == this.unit &&
          other.currency == this.currency &&
          other.numOfItems == this.numOfItems &&
          other.currentPrice == this.currentPrice &&
          other.quantityPerUnit == this.quantityPerUnit);
}

class CartTableEntityCompanion extends UpdateCompanion<CartTableEntityData> {
  final Value<int> id;
  final Value<int> productId;
  final Value<String> name;
  final Value<String> image;
  final Value<String> unit;
  final Value<String> currency;
  final Value<int> numOfItems;
  final Value<double> currentPrice;
  final Value<double> quantityPerUnit;
  const CartTableEntityCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.unit = const Value.absent(),
    this.currency = const Value.absent(),
    this.numOfItems = const Value.absent(),
    this.currentPrice = const Value.absent(),
    this.quantityPerUnit = const Value.absent(),
  });
  CartTableEntityCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required String name,
    required String image,
    required String unit,
    required String currency,
    required int numOfItems,
    required double currentPrice,
    required double quantityPerUnit,
  })  : productId = Value(productId),
        name = Value(name),
        image = Value(image),
        unit = Value(unit),
        currency = Value(currency),
        numOfItems = Value(numOfItems),
        currentPrice = Value(currentPrice),
        quantityPerUnit = Value(quantityPerUnit);
  static Insertable<CartTableEntityData> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? unit,
    Expression<String>? currency,
    Expression<int>? numOfItems,
    Expression<double>? currentPrice,
    Expression<double>? quantityPerUnit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (unit != null) 'unit': unit,
      if (currency != null) 'currency': currency,
      if (numOfItems != null) 'num_of_items': numOfItems,
      if (currentPrice != null) 'current_price': currentPrice,
      if (quantityPerUnit != null) 'quantity_per_unit': quantityPerUnit,
    });
  }

  CartTableEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? productId,
      Value<String>? name,
      Value<String>? image,
      Value<String>? unit,
      Value<String>? currency,
      Value<int>? numOfItems,
      Value<double>? currentPrice,
      Value<double>? quantityPerUnit}) {
    return CartTableEntityCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      image: image ?? this.image,
      unit: unit ?? this.unit,
      currency: currency ?? this.currency,
      numOfItems: numOfItems ?? this.numOfItems,
      currentPrice: currentPrice ?? this.currentPrice,
      quantityPerUnit: quantityPerUnit ?? this.quantityPerUnit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (numOfItems.present) {
      map['num_of_items'] = Variable<int>(numOfItems.value);
    }
    if (currentPrice.present) {
      map['current_price'] = Variable<double>(currentPrice.value);
    }
    if (quantityPerUnit.present) {
      map['quantity_per_unit'] = Variable<double>(quantityPerUnit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartTableEntityCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('unit: $unit, ')
          ..write('currency: $currency, ')
          ..write('numOfItems: $numOfItems, ')
          ..write('currentPrice: $currentPrice, ')
          ..write('quantityPerUnit: $quantityPerUnit')
          ..write(')'))
        .toString();
  }
}

abstract class _$FirekartDatabase extends GeneratedDatabase {
  _$FirekartDatabase(QueryExecutor e) : super(e);
  late final $CartTableEntityTable cartTableEntity =
      $CartTableEntityTable(this);
  late final CartDao cartDao = CartDao(this as FirekartDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cartTableEntity];
}
