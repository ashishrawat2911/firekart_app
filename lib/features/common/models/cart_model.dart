import 'package:fluttercommerce/features/common/models/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CartModel {
  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  @JsonKey(defaultValue: 0)
  int numOfItems;

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

  factory CartModel.fromJson(json) => _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);

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
}
