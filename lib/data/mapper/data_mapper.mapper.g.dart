// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

class DataMapperImpl extends DataMapper {
  DataMapperImpl() : super();

  @override
  AccountDetails accountDetailsFromModel(AccountDetailsModel model) {
    final accountdetails = AccountDetails(
      name: model.name,
      phoneNumber: model.phoneNumber,
      addresses: model.addresses.map((e) => e).toList(),
    );
    return accountdetails;
  }

  @override
  AccountDetailsModel accountDetailsToModel(AccountDetails model) {
    final accountdetailsmodel = AccountDetailsModel(
      name: model.name,
      phoneNumber: model.phoneNumber,
      addresses: model.addresses.map((e) => e).toList(),
    );
    return accountdetailsmodel;
  }

  @override
  Order orderFromModel(OrderModel orderModel) {
    final order = Order(
      orderId: orderModel.orderId,
      price: orderModel.price,
      orderItems: orderModel.orderItems.map((e) => e).toList(),
      orderedAt: orderModel.orderedAt,
      orderStatus: orderModel.orderStatus,
      currency: orderModel.currency,
      paymentId: orderModel.paymentId,
      signature: orderModel.signature,
      orderAddress: orderModel.orderAddress,
    );
    return order;
  }

  @override
  OrderModel orderToModel(Order order) {
    final ordermodel = OrderModel(
      orderId: order.orderId,
      price: order.price,
      orderItems: order.orderItems.map((e) => e).toList(),
      orderedAt: order.orderedAt,
      orderStatus: order.orderStatus,
      currency: order.currency,
      paymentId: order.paymentId,
      signature: order.signature,
      orderAddress: order.orderAddress,
    );
    return ordermodel;
  }

  @override
  Product productFromModel(ProductModel productModel) {
    final product = Product(
      productId: productModel.productId,
      image: productModel.image,
      name: productModel.name,
      unit: productModel.unit,
      categories: productModel.categories.map((e) => e).toList(),
      currency: productModel.currency,
      dealOfTheDay: productModel.dealOfTheDay,
      topProducts: productModel.topProducts,
      onSale: productModel.onSale,
      currentPrice: productModel.currentPrice,
      actualPrice: productModel.actualPrice,
      quantityPerUnit: productModel.quantityPerUnit,
      description: productModel.description,
      isProductAvailable: productModel.isProductAvailable,
      nameSearch: productModel.nameSearch.map((e) => e).toList(),
    );
    return product;
  }

  @override
  Cart cartFromModel(CartModel cartModel) {
    final cart = Cart(
      productId: cartModel.productId,
      image: cartModel.image,
      name: cartModel.name,
      unit: cartModel.unit,
      currency: cartModel.currency,
      currentPrice: cartModel.currentPrice,
      quantityPerUnit: cartModel.quantityPerUnit,
      numOfItems: cartModel.numOfItems,
    );
    return cart;
  }

  @override
  CartModel carToModel(Cart cartModel) {
    final cartmodel = CartModel(
      productId: cartModel.productId,
      image: cartModel.image,
      name: cartModel.name,
      unit: cartModel.unit,
      currency: cartModel.currency,
      currentPrice: cartModel.currentPrice,
      quantityPerUnit: cartModel.quantityPerUnit,
      numOfItems: cartModel.numOfItems,
    );
    return cartmodel;
  }

  @override
  CartModel cartFromProduct(Product product) {
    final cartmodel = CartModel(
      productId: product.productId,
      image: product.image,
      name: product.name,
      unit: product.unit,
      currency: product.currency,
      currentPrice: product.currentPrice,
      quantityPerUnit: product.quantityPerUnit,
    );
    return cartmodel;
  }
}
