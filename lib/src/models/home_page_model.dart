import 'package:fluttercommerce/src/models/product_model.dart';

class HomePageModel {
  List<ProductModel>? topProducts;
  List<ProductModel>? dealOfTheDay;

  List<ProductModel>? onSale;

  HomePageModel({this.topProducts, this.dealOfTheDay, this.onSale});

  @override
  String toString() {
    return 'HomePageModel{topProducts: $topProducts, dealOfTheDay: $dealOfTheDay, onSale: $onSale}';
  }
}
