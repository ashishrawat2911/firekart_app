import 'package:domain/models/cart_model.dart';
import 'package:domain/models/product_model.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'domain_mapper.mapper.g.dart';

@Mapper(useInjection: true)
abstract class DomainMapper {
  Cart cartFromProduct(Product model);
}
