import 'package:fluttercommerce/domain/models/account_details_model.dart';
import 'package:fluttercommerce/domain/models/cart_model.dart';
import 'package:fluttercommerce/domain/models/order_model.dart';
import 'package:fluttercommerce/domain/repository/firebase_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  FirebaseRepository,
  Cart,
  AccountDetails,
  Order,
])
void test() {}
