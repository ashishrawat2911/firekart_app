import 'package:domain/usecases/get_items_in_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetItemsInCartUseCase getItemsInCartUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getItemsInCartUseCase = GetItemsInCartUseCase(mockFirebaseRepository);
  });

  test('Test GetItemsInCartUseCase', () async {
    const productId = '0000000000';
    when(mockFirebaseRepository.checkItemInCart(productId)).thenAnswer(
      (_) => Future.value(0),
    );
    final value = await getItemsInCartUseCase.execute(productId);
    verify(mockFirebaseRepository.checkItemInCart(productId));
    expect(value, 0);
  });
}
