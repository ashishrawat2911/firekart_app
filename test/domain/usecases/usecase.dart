import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/cart_model.dart';
import 'package:firekart/domain/models/order_model.dart';

import 'package:mockito/annotations.dart';

@GenerateMocks([
  FirebaseRepository,
  Cart,
  AccountDetails,
  Order,
])
void test() {}
