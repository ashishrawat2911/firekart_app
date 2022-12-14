
import 'package:shared_dependencies/shared_dependencies.dart';

part 'product_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductModel {
  final String productId;
  final String image;
  final String name;
  final String description;
  final String unit;
  final List<String> categories;
  final String currency;
  final bool dealOfTheDay;
  final bool topProducts;
  final bool onSale;
  final num currentPrice;
  final num actualPrice;
  final num quantityPerUnit;

  @JsonKey(defaultValue: false)
  final bool isProductAvailable;
  final List<String> nameSearch;

  ProductModel(
      this.productId,
      this.image,
      this.name,
      this.description,
      this.unit,
      this.categories,
      this.currency,
      this.dealOfTheDay,
      this.topProducts,
      this.onSale,
      this.currentPrice,
      this.actualPrice,
      this.quantityPerUnit,
      this.isProductAvailable,
      this.nameSearch,);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  // 'name_search': setSearchParam(name),
  @override
  String toString() {
    return 'ProductModel{productId: $productId, image: $image, name: $name, unit: $unit, categories: $categories, currency: $currency, dealOfTheDay: $dealOfTheDay, topProducts: $topProducts, onSale: $onSale, currentPrice: $currentPrice, actualPrice: $actualPrice}';
  }

  List<String> setSearchParam(String name) {
    List<String> nameSearch = [];
    String temp = '';
    for (int i = 0; i < name.length; i++) {
      temp = temp + name[i].toLowerCase();
      nameSearch.add(temp);
    }
    return nameSearch;
  }
}
