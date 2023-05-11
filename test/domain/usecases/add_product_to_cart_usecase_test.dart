import 'package:fluttercommerce/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercommerce/domain/usecases/add_product_to_cart_usecase.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late ProductAddToCartUseCase productAddToCartUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    productAddToCartUseCase = ProductAddToCartUseCase(mockFirebaseRepository);
  });

  test('Test ProductAddToCartUseCase', () async {
    final cart = MockCart();
    await productAddToCartUseCase.execute(cart);
    verify(mockFirebaseRepository.addProductToCart(cart));
  });
}
