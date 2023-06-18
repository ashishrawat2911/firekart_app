import 'package:fluttercommerce/domain/usecases/logout_usecase.dart';
import 'package:fluttercommerce/domain/usecases/place_order_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late PlaceOrderUseCase placeOrderUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    placeOrderUseCase = PlaceOrderUseCase(mockFirebaseRepository);
  });

  test('Test PlaceOrderUseCase', () async {
    final order=MockOrder();
    when(mockFirebaseRepository.placeOrder(order)).thenAnswer((realInvocation) => Future.value(true));
    await placeOrderUseCase.execute(order);
    verify(mockFirebaseRepository.placeOrder(order));
  });
}
