import 'package:shared_dependencies/shared_dependencies.dart';

part 'cart_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CartModel {
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
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

  CartModel(
    this.productId,
    this.image,
    this.name,
    this.unit,
    this.currency,
    this.currentPrice,
    this.quantityPerUnit, [
    this.numOfItems = 0,
  ]);
}
