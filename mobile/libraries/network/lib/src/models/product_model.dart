import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductModel {
  String? productId;
  String? image;
  String? name;
  String? description;
  String? unit;
  List<String>? categories;
  String? currency;
  bool? dealOfTheDay;
  bool? topProducts;
  bool? onSale;
  num? currentPrice;
  num? actualPrice;
  num? quantityPerUnit;
  bool? isProductAvailable;
  List<String>? nameSearch;

  ProductModel(
      {this.productId,
      this.image,
      this.name,
      this.unit,
      this.categories,
      this.currency,
      this.dealOfTheDay,
      this.topProducts,
      this.onSale,
      this.currentPrice,
      this.actualPrice,
      this.quantityPerUnit,
      this.description,
      this.isProductAvailable = false,
      this.nameSearch});

  factory ProductModel.fromJson(json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  // 'name_search': setSearchParam(name),
  @override
  String toString() {
    return 'ProductModel{productId: $productId, image: $image, name: $name, unit: $unit, categories: $categories, currency: $currency, dealOfTheDay: $dealOfTheDay, topProducts: $topProducts, onSale: $onSale, currentPrice: $currentPrice, actualPrice: $actualPrice}';
  }

  List<String> setSearchParam(String name) {
    List<String> nameSearch = [];
    String temp = "";
    for (int i = 0; i < name.length; i++) {
      temp = temp + name[i].toLowerCase();
      nameSearch.add(temp);
    }
    return nameSearch;
  }
}
