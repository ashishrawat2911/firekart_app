// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: DataMapper)
class DataMapperImpl extends DataMapper {
  DataMapperImpl() : super();

  @override
  AccountDetails accountDetailsFromModel(AccountDetailsModel model) {
    final accountdetails = AccountDetails(
      name: model.name,
      phoneNumber: model.phoneNumber,
      addresses: model.addresses.map((x) => addressFromModel(x)).toList(),
    );
    return accountdetails;
  }

  @override
  AccountDetailsModel accountDetailsToModel(AccountDetails model) {
    final accountdetailsmodel = AccountDetailsModel(
      model.name,
      model.phoneNumber,
      model.addresses.map((x) => addressToModel(x)).toList(),
    );
    return accountdetailsmodel;
  }

  @override
  Address addressFromModel(AddressModel model) {
    final address = Address(
      name: model.name,
      pincode: model.pincode,
      address: model.address,
      city: model.city,
      state: model.state,
      phoneNumber: model.phoneNumber,
      isDefault: model.isDefault,
    );
    return address;
  }

  @override
  AddressModel addressToModel(Address model) {
    final addressmodel = AddressModel(
      model.name,
      model.pincode,
      model.address,
      model.city,
      model.state,
      model.phoneNumber,
      model.isDefault,
    );
    return addressmodel;
  }

  @override
  Order orderFromModel(OrderModel model) {
    final order = Order(
      orderId: model.orderId,
      price: model.price,
      orderItems: model.orderItems.map((x) => orderItemFromModel(x)).toList(),
      orderedAt: model.orderedAt,
      orderStatus: model.orderStatus,
      currency: model.currency,
      paymentId: model.paymentId,
      signature: model.signature,
      orderAddress: addressFromModel(model.orderAddress),
    );
    return order;
  }

  @override
  OrderModel orderToModel(Order order) {
    final ordermodel = OrderModel(
      order.orderId,
      order.price,
      order.orderItems.map((x) => orderItemToModel(x)).toList(),
      order.orderedAt,
      order.orderStatus,
      order.currency,
      order.paymentId,
      order.signature,
      addressToModel(order.orderAddress),
    );
    return ordermodel;
  }

  @override
  OrderItem orderItemFromModel(OrderItemModel model) {
    final orderitem = OrderItem(
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      price: model.price,
      noOfItems: model.noOfItems,
    );
    return orderitem;
  }

  @override
  OrderItemModel orderItemToModel(OrderItem model) {
    final orderitemmodel = OrderItemModel(
      model.productId,
      model.image,
      model.name,
      model.unit,
      model.currency,
      model.price,
      model.noOfItems,
    );
    return orderitemmodel;
  }

  @override
  Product productFromModel(ProductModel model) {
    final product = Product(
      categories: model.categories.map((e) => e).toList(),
      nameSearch: model.nameSearch.map((e) => e).toList(),
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      dealOfTheDay: model.dealOfTheDay,
      topProducts: model.topProducts,
      onSale: model.onSale,
      currentPrice: model.currentPrice,
      actualPrice: model.actualPrice,
      quantityPerUnit: model.quantityPerUnit,
      description: model.description,
      isProductAvailable: model.isProductAvailable,
    );
    return product;
  }

  @override
  ProductModel productToModel(Product model) {
    final productmodel = ProductModel(
      model.productId,
      model.image,
      model.name,
      model.description,
      model.unit,
      model.categories.map((e) => e).toList(),
      model.currency,
      model.dealOfTheDay,
      model.topProducts,
      model.onSale,
      model.currentPrice,
      model.actualPrice,
      model.quantityPerUnit,
      model.isProductAvailable,
      model.nameSearch.map((e) => e).toList(),
    );
    return productmodel;
  }

  @override
  Cart cartFromModel(CartModel model) {
    final cart = Cart(
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      currentPrice: model.currentPrice,
      quantityPerUnit: model.quantityPerUnit,
      numOfItems: model.numOfItems,
    );
    return cart;
  }

  @override
  CartModel carToModel(Cart model) {
    final cartmodel = CartModel(
      model.productId,
      model.image,
      model.name,
      model.unit,
      model.currency,
      model.currentPrice,
      model.quantityPerUnit,
      model.numOfItems,
    );
    return cartmodel;
  }

  @override
  CartModel cartFromProduct(Product model) {
    final cartmodel = CartModel(
      model.productId,
      model.image,
      model.name,
      model.unit,
      model.currency,
      model.currentPrice,
      model.quantityPerUnit,
    );
    return cartmodel;
  }
}
