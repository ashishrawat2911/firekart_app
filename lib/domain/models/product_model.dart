class Product {
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
  final bool isProductAvailable;
  final List<String> nameSearch;

  Product({
    required this.categories,
    required this.nameSearch,
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.dealOfTheDay,
    required this.topProducts,
    required this.onSale,
    required this.currentPrice,
    required this.actualPrice,
    required this.quantityPerUnit,
    required this.description,
    this.isProductAvailable = false,
  });
}
