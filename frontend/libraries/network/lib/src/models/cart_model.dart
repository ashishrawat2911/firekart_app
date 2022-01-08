import 'package:json_annotation/json_annotation.dart';
import 'package:network/src/models/product_model.dart';

part 'cart_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CartModel {
  CartModel({
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.currentPrice,
    required this.quantityPerUnit,
    required this.numOfItems,
  });

  factory CartModel.fromProduct(ProductModel productModel, int numOfItems) {
    return CartModel(
        productId: productModel.productId!,
        image: productModel.image!,
        name: productModel.name!,
        unit: productModel.unit!,
        currency: productModel.currency!,
        currentPrice: productModel.currentPrice!,
        quantityPerUnit: productModel.quantityPerUnit!,
        numOfItems: numOfItems);
  }

  factory CartModel.fromJson(json) => _$CartModelFromJson(json);
  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  @JsonKey(defaultValue: 0)
  int numOfItems;

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
