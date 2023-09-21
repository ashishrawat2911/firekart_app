import 'package:domain/models/account_details_model.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/repository/order_repository.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  AuthRepository,
  CartRepository,
  OrderRepository,
  ProductRepository,
  UserRepository,
  AddAddress
])
void main() {}
