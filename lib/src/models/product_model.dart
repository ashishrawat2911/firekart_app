import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String productId;
  String image;
  String name;
  String description;
  String unit;
  List<String> categories;
  String currency;
  bool dealOfTheDay;
  bool topProducts;
  bool onSale;
  num currentPrice;
  num actualPrice;
  num quantityPerUnit;
  bool isProductAvailable;
  List<String> nameSearch;

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

  factory ProductModel.fromJson(DocumentSnapshot json) {
    return ProductModel(
      productId: json['product_id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      description: json['description'] as String,
      categories:
          (json['categories'] as List)?.map((e) => e as String)?.toList(),
      currency: json['currency'] as String,
      dealOfTheDay: json['deal_of_the_day'] as bool,
      topProducts: json['top_products'] as bool,
      onSale: json['on_sale'] as bool,
      isProductAvailable: json['is_product_available'] as bool,
      currentPrice: json['current_price'] as num,
      actualPrice: json['actual_price'] as num,
      quantityPerUnit: json['quantity_per_unit'] as num,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_id': productId,
        'image': image,
        'name': name,
        'unit': unit,
        'description': description,
        'categories': categories,
        'currency': currency,
        'deal_of_the_day': dealOfTheDay,
        'top_products': topProducts,
        'on_sale': onSale,
        'current_price': currentPrice,
        'actual_price': actualPrice,
        'quantity_per_unit': quantityPerUnit,
        'is_product_available': isProductAvailable,
        'name_search': setSearchParam(name),
      };

  @override
  String toString() {
    return 'ProductModel{productId: $productId, image: $image, name: $name, unit: $unit, categories: $categories, currency: $currency, dealOfTheDay: $dealOfTheDay, topProducts: $topProducts, onSale: $onSale, currentPrice: $currentPrice, actualPrice: $actualPrice}';
  }

  List<String> setSearchParam(String name) {
    List<String> nameSearch = List();
    String temp = "";
    for (int i = 0; i < name.length; i++) {
      temp = temp + name[i].toLowerCase();
      nameSearch.add(temp);
    }
    return nameSearch;
  }
}
