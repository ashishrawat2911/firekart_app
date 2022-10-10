import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/product_model.dart';
import 'package:smartstruct/smartstruct.dart';

part 'domain_mapper.mapper.g.dart';

@Mapper()
abstract class DomainMapper {
  Cart cartFromProduct(Product model);
}
