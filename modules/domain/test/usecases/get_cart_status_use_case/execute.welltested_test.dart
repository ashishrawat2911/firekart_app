import 'package:domain/models/cart_model.dart';

import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';

@GenerateMocks([CartRepository])
void main() {
  late GetCartStatusUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = GetCartStatusUseCase(mockCartRepository);
  });

  group('execute', () {
    final cartList = [
      Cart(
        productId: 1,
        image: 'test_image',
        name: 'test_name',
        unit: 'test_unit',
        currency: 'test_currency',
        currentPrice: 100,
        quantityPerUnit: 1,
        numOfItems: 1,
      ),
    ];

    test('should return List<Cart> when getCart is successful', () async {
      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Right(cartList));

      final result = await useCase.execute();

      expect(result, equals(Right(cartList)));
      verify(mockCartRepository.getCarts()).called(1);
    });

    test('should return NetworkError when getCart fails', () async {
      final networkError = NetworkError('Failed to fetch cart', 500);

      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute();

      expect(result, equals(Left(networkError)));
      verify(mockCartRepository.getCarts()).called(1);
    });
  });
}