import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late ProductDeleteCartUseCase productDeleteCartUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    productDeleteCartUseCase = ProductDeleteCartUseCase(mockFirebaseRepository);
  });

  test('Test ProductDeleteCartUseCase', () async {
    const productId = 'MockProductId';
    await productDeleteCartUseCase.execute(productId);
    verify(mockFirebaseRepository.delProductFromCart(productId));
  });
}
