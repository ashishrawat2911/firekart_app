import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/order_model.dart';
import 'package:domain/models/product_model.dart';
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
])
void main() {}

final mockAddress = Address(
  id: 1,
  name: 'John Doe',
  pincode: '12345',
  address: '123 Main Street',
  city: 'Sample City',
  state: 'Sample State',
  phoneNumber: '555-555-5555',
  isDefault: true,
);

final mockCart = Cart(
  productId: 1,
  image: 'product_image.jpg',
  name: 'Sample Product',
  unit: 'Piece',
  currency: 'USD',
  currentPrice: 19.99,
  quantityPerUnit: 1.0,
  numOfItems: 3,
);

final mockEditAddress = EditAddress(
  id: 1,
  name: 'John Doe',
  pincode: '12345',
  address: '123 Main Street',
  city: 'Sample City',
  state: 'Sample State',
  phoneNumber: '555-555-5555',
  isDefault: true,
);

final mockAccountDetails = AccountDetails(
  id: 1,
  name: 'John Doe',
  phoneNumber: '555-555-5555',
);

final mockAddAddress = AddAddress(
  name: 'John Doe',
  pincode: '12345',
  address: '123 Main Street',
  city: 'Sample City',
  state: 'Sample State',
  phoneNumber: '555-555-5555',
  isDefault: true,
);
final mockOrder = Order(
  id: 1,
  price: 49.99,
  orderedAt: '2023-09-22 14:30:00',
  orderStatus: 'Processing',
  paymentId: 'PAY123456',
  signature: 'ABCD1234',
);
final mockProduct = Product(
  productId: 1,
  image: 'product.jpg',
  name: 'Sample Product',
  description: 'This is a sample product description.',
  unit: 'pcs',
  currency: 'USD',
  currentPrice: 19.99,
  actualPrice: 24.99,
  quantityPerUnit: 10,
);
