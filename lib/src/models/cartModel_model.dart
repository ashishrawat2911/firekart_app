import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercommerce/src/models/product_model.dart';

class CartModel {
  String productId;
  String image;
  String name;
  String unit;

  String currency;
  num currentPrice;
  num quantityPerUnit;
  num numOfItems;

  CartModel(
      {this.productId,
      this.image,
      this.name,
      this.unit,
      this.currency,
      this.currentPrice,
      this.quantityPerUnit,
      this.numOfItems});

  factory CartModel.fromJson(DocumentSnapshot json) {
    return CartModel(
      productId: json['product_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      currency: json['currency'] as String,
      currentPrice: json['current_price'] as num,
      quantityPerUnit: json['quantity_per_unit'] as num,
      numOfItems: json['no_of_items'] as num,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_id': productId,
        'image': image,
        'name': name,
        'unit': unit,
        'currency': currency,
        'current_price': currentPrice,
        'quantity_per_unit': quantityPerUnit,
        'no_of_items': numOfItems,
      };

  factory CartModel.fromProduct(ProductModel productModel, num numOfItems) {
    return CartModel(
        productId: productModel.productId,
        image: productModel.image,
        name: productModel.name,
        unit: productModel.unit,
        currency: productModel.currency,
        currentPrice: productModel.currentPrice,
        quantityPerUnit: productModel.quantityPerUnit,
        numOfItems: numOfItems);
  }
}
