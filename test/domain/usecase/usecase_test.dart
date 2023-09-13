import 'package:firekart/domain/repository/auth_repository.dart';
import 'package:firekart/domain/repository/cart_repository.dart';
import 'package:firekart/domain/repository/order_repository.dart';
import 'package:firekart/domain/repository/product_repository.dart';
import 'package:firekart/domain/repository/user_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthRepository,
  CartRepository,
  OrderRepository,
  ProductRepository,
  UserRepository,
])
void test() {}