import 'package:flutter_test/flutter_test.dart';
import 'package:firekart/data/mapper/data_mapper.dart';
import 'package:firekart/data/repository/firebase_repository.dart';
import 'package:firekart/data/service/firebase_service.dart';
import 'package:firekart/data/service/sms_service.dart';
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/order_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../mock_data.dart';
import 'firebase_repository_test.mocks.dart';

@GenerateMocks([
  FirebaseService,
  SmsService,
])
void main() {
  late DataMapperImpl dataMapper;
  late MockFirebaseService firebaseService;
  late MockSmsService smsService;
  late FirebaseRepositoryImpl firebaseRepository;

  setUpAll(() {
    dataMapper = DataMapperImpl();
    firebaseService = MockFirebaseService();
    smsService = MockSmsService();
    firebaseRepository =
        FirebaseRepositoryImpl(dataMapper, firebaseService, smsService);
  });

  group('Test FirebaseRepositoryImpl', () {
    test('fetchUserDetails', () async {
      when(firebaseService.fetchUserDetails())
          .thenAnswer((realInvocation) async => mockUserDetails);
      verifyNever(firebaseService.fetchUserDetails());
      final userDetails = await firebaseRepository.fetchUserDetails();
      expect(userDetails.phoneNumber, mockUserDetails.phoneNumber);
    });
    test('streamUserDetails', () async {
      when(firebaseService.streamUserDetails())
          .thenAnswer((realInvocation) => Stream.value(mockUserDetails));
      verifyNever(firebaseService.streamUserDetails());
      final userDetails = firebaseRepository.streamUserDetails();
      expect(
        (await userDetails.first).phoneNumber,
        mockUserDetails.phoneNumber,
      );
    });
    test('listenToCart', () async {
      when(firebaseService.cartStatusListen())
          .thenAnswer((realInvocation) => Stream.value([mockCartModel]));
      verifyNever(firebaseService.cartStatusListen());
      final cartModel = firebaseRepository.listenToCart();
      expect((await cartModel.first).first.productId, mockCartModel.productId);
    });
    test('getAllOrders', () async {
      final mockOrders = [mockOrderModel];
      when(firebaseService.getAllOrders()).thenAnswer((_) async => mockOrders);
      final result = await firebaseRepository.getAllOrders();
      expect(result.length, equals(mockOrders.length));
      verify(firebaseService.getAllOrders()).called(1);
    });

    test('getAllProducts should return a list of products', () async {
      final mockProductList = [mockProductModel];
      when(firebaseService.getAllProducts())
          .thenAnswer((_) => Future.value(mockProductList));

      final result = await firebaseRepository.getAllProducts(all: false);

      verify(firebaseService.getAllProducts());
      expect(result.length, mockProductList.length);
      expect(result.first.productId, mockProductList.first.productId);
    });

    test('placeOrder should return null if the order is places', () async {
      when(firebaseService.placeOrder(mockOrderModel))
          .thenAnswer((realInvocation) => Future.value(true));
      expect(await firebaseRepository.placeOrder(order), true);
    });

    test('Search products by name', () async {
      when(firebaseService.searchProducts('12345'))
          .thenAnswer((realInvocation) => Future.value([mockProductModel]));
      final searchResults = await firebaseRepository.searchProducts('12345');

      expect(searchResults.length, 1);
      expect(searchResults[0].productId, '12345');
      expect(searchResults[0].name, 'Product 12345');
    });

    test('Search products with no match', () async {
      when(firebaseService.searchProducts('Non-existent'))
          .thenAnswer((realInvocation) => Future.value([]));

      final searchResults =
          await firebaseRepository.searchProducts('Non-existent');

      expect(searchResults.isEmpty, isTrue);
    });
    test('addProductToCart', () async {
      final result = await firebaseRepository
          .addProductToCart(dataMapper.cartFromModel(mockCartModel));

      expect(result, isTrue);
    });
    test('getPhoneNumber', () async {
      when(firebaseService.getPhoneNumber()).thenReturn('9090909090');
      final result = firebaseRepository.getPhoneNumber();

      expect(result, '9090909090');
    });
    test('getPhoneNumber if null', () async {
      when(firebaseService.getPhoneNumber()).thenReturn(null);
      final result = firebaseRepository.getPhoneNumber();

      expect(result, isNull);
    });
    test('checkUserDetail if user exist', () async {
      when(firebaseService.checkUserDetail())
          .thenAnswer((realInvocation) => Future.value(true));
      final result = await firebaseRepository.checkUserDetail();

      expect(result, isTrue);
    });
    test('checkUserDetail if user does not exist', () async {
      when(firebaseService.checkUserDetail())
          .thenAnswer((realInvocation) => Future.value(false));
      final result = await firebaseRepository.checkUserDetail();

      expect(result, isFalse);
    });
  });
}

final order = Order(
  orderId: '123456789',
  price: 27.97,
  orderItems: [
    OrderItem(
      productId: '1',
      image: 'image1.jpg',
      name: 'Product 1',
      unit: 'pcs',
      currency: 'USD',
      price: 10.99,
      noOfItems: 2,
    ),
  ],
  orderedAt: '2023-06-13',
  orderStatus: 'Pending',
  currency: 'USD',
  paymentId: 'ABC123',
  signature: 'xyz456',
  orderAddress: Address(
    name: 'John Doe',
    pincode: '12345',
    address: '123 Main St',
    city: 'New York',
    state: 'NY',
    phoneNumber: '555-1234',
    isDefault: true,
  ),
);
