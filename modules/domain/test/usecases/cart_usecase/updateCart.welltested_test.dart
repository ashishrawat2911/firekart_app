import 'package:dartz/dartz.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'updateCart.welltested_test.mocks.dart';

@GenerateMocks([CartRepository])
void main() {
  late CartUseCase cartUseCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    cartUseCase = CartUseCase(mockCartRepository);
  });

  group('updateCart', () {
    const productId = 1;
    const quantity = 2;

    final cartList = [
      Cart(
        productId: 1,
        image: 'product_image.jpg',
        name: 'Sample Product',
        unit: 'Piece',
        currency: 'USD',
        currentPrice: 19.99,
        quantityPerUnit: 1.0,
        numOfItems: 3,
      )
    ];

    final emptyEntity = EmptyEntity(true, 'Cart updated successfully');

    test('should return EmptyEntity when updateCart is successful', () async {
      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Right(cartList));
      when(mockCartRepository.updateCart(productId, quantity))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await cartUseCase.updateCart(productId, quantity);

      expect(result, equals(Right(emptyEntity)));
      verify(mockCartRepository.updateCart(productId, quantity)).called(1);
    });

    test('should return NetworkError when updateCart fails', () async {
      final networkError = NetworkError('Error updating cart', 500);

      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Right(cartList));
      when(mockCartRepository.updateCart(productId, quantity))
          .thenAnswer((_) async => Left(networkError));

      final result = await cartUseCase.updateCart(productId, quantity);

      expect(result, equals(Left(networkError)));
      verify(mockCartRepository.updateCart(productId, quantity)).called(1);
    });
  });
}
