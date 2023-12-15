import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:domain/usecases/get_product_details_usecase.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/product_model.dart';

@GenerateMocks([ProductRepository])
void main() {
  late GetProductDetailsUseCase useCase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    useCase = GetProductDetailsUseCase(mockProductRepository);
  });

  group('execute', () {
    const productId = 1;

    final product = Product(
      productId: productId,
      image: 'test_image',
      name: 'test_name',
      description: 'test_description',
      unit: 'test_unit',
      currency: 'test_currency',
      currentPrice: 100,
      actualPrice: 120,
      quantityPerUnit: 1,
    );

    test('should return Product when product details are retrieved successfully',
        () async {
      when(mockProductRepository.getProductsDetails(productId))
          .thenAnswer((_) async => Right(product));

      final result = await useCase.execute(productId);

      expect(result, equals(Right(product)));
    });

    test('should return NetworkError when product details retrieval fails',
        () async {
      final networkError = NetworkError(
        'Error retrieving product details',
        500,
      );

      when(mockProductRepository.getProductsDetails(productId))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(productId);

      expect(result, equals(Left(networkError)));
    });
  });
}