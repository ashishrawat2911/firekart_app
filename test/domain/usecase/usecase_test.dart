import 'package:firekart/domain/models/account_details_model.dart';
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
  AddAddress
])
void main() {}