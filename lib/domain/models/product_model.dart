class Product {
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

  Product(
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
}
