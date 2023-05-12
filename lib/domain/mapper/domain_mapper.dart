import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/product_model.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:smartstruct/smartstruct.dart';

part 'domain_mapper.mapper.g.dart';

@Mapper(useInjection: true)
//ignore: one_member_abstracts
abstract class DomainMapper {
  Cart cartFromProduct(Product model);
}
