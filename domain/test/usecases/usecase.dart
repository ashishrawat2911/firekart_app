import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/repository/firebase_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  FirebaseRepository,
  Cart,
  AccountDetails,
])
void test() {}
