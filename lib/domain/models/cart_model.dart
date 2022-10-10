class Cart {
  Cart({
    required this.productId,
    required this.image,
    required this.name,
    required this.unit,
    required this.currency,
    required this.currentPrice,
    required this.quantityPerUnit,
    this.numOfItems = 0,
  });

  String productId;
  String image;
  String name;
  String unit;
  String currency;
  num currentPrice;
  num quantityPerUnit;
  int numOfItems;
}
