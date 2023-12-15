import 'package:domain/repository/cart_repository.dart';

import 'getNoOfItemsForAProduct.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/cart_usecase.dart';
import 'package:domain/models/cart_model.dart';

@GenerateMocks([Cart,CartRepository])
void main() {
  late CartUseCase cartUseCase;
  late MockCart mockCart;
  late CartRepository repository;

  setUp(() {
    repository = MockCartRepository();
    cartUseCase = CartUseCase(repository);
    mockCart = MockCart();
  });

  group('getNoOfItemsForAProduct', () {
    final productId = 1;
    final numOfItems = 2;

    final carts = [
      Cart(
        productId: productId,
        image: 'test_image',
        name: 'test_name',
        unit: 'test_unit',
        currency: 'test_currency',
        currentPrice: 100,
        quantityPerUnit: 1,
        numOfItems: numOfItems,
      ),
      Cart(
        productId: 2,
        image: 'test_image',
        name: 'test_name',
        unit: 'test_unit',
        currency: 'test_currency',
        currentPrice: 100,
        quantityPerUnit: 1,
        numOfItems: 3,
      ),
    ];

    test('should return number of items for a given product id', () {
      when(mockCart.numOfItems).thenReturn(numOfItems);

      final result = cartUseCase.getNoOfItemsForAProduct(productId, carts);

      expect(result, equals(numOfItems));
    });

    test('should return 0 when product id is not found in the cart', () {
      final result = cartUseCase.getNoOfItemsForAProduct(3, carts);

      expect(result, equals(0));
    });
  });
}