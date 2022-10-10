// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

class DomainMapperImpl extends DomainMapper {
  DomainMapperImpl() : super();

  @override
  Cart cartFromProduct(Product model) {
    final cart = Cart(
      productId: model.productId,
      image: model.image,
      name: model.name,
      unit: model.unit,
      currency: model.currency,
      currentPrice: model.currentPrice,
      quantityPerUnit: model.quantityPerUnit,
    );
    return cart;
  }
}
