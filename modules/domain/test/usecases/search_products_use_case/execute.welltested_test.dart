import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:domain/usecases/search_products_use_case.dart';
import 'package:domain/models/product_model.dart';

@GenerateMocks([ProductRepository])
void main() {
  late SearchProductsUseCase useCase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    useCase = SearchProductsUseCase(mockProductRepository);
  });

  group('execute', () {
    const query = 'test_query';

    final product = Product(
      productId: 1,
      image: 'test_image',
      name: 'test_name',
      description: 'test_description',
      unit: 'test_unit',
      currency: 'test_currency',
      currentPrice: 100,
      actualPrice: 120,
      quantityPerUnit: 1,
    );

    test('should return List<Product> when products are retrieved successfully',
        () async {
      final products=[product];
      when(mockProductRepository.getProductsByQuery(query))
          .thenAnswer((_) async => Right(products));

      final result = await useCase.execute(query);

      expect(result, equals(Right(products)));
    });

    test('should return NetworkError when product retrieval fails', () async {
      final networkError = NetworkError('Error retrieving products', 500);

      when(mockProductRepository.getProductsByQuery(query))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(query);

      expect(result, equals(Left(networkError)));
    });
  });
}