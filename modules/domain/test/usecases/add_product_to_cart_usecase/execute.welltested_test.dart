import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/add_product_to_cart_usecase.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/network.dart';

@GenerateMocks([CartRepository])
void main() {
  late ProductAddToCartUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = ProductAddToCartUseCase(mockCartRepository);
  });

  group('execute', () {
    const productId = 1;

    final emptyEntity = EmptyEntity(true, 'Product added to cart successfully');

    test('should return EmptyEntity when product is added to cart successfully',
        () async {
      when(mockCartRepository.addProductToCart(productId))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await useCase.execute(productId);

      expect(result, equals(Right(emptyEntity)));
    });

    test('should return NetworkError when adding product to cart fails',
        () async {
      final networkError = NetworkError('Error adding product to cart', 500);

      when(mockCartRepository.addProductToCart(productId))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(productId);

      expect(result, equals(Left(networkError)));
    });
  });
}