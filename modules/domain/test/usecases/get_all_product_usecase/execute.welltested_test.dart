import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/product_model.dart';

@GenerateMocks([ProductRepository])
void main() {
  late GetAllProductsUseCase useCase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    useCase = GetAllProductsUseCase(mockProductRepository);
  });

  group('execute', () {
    const page = 1;
    const limit = 10;

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

    final productList = [product];

    test('should return List<Product> when data is retrieved successfully',
        () async {
      when(mockProductRepository.getAllProducts(page, limit))
          .thenAnswer((_) async => Right(productList));

      final result = await useCase.execute(page, limit);

      expect(result, equals(Right(productList)));
    });

    test('should return NetworkError when data retrieval fails', () async {
      final networkError = NetworkError('Error retrieving data', 500);

      when(mockProductRepository.getAllProducts(page, limit))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(page, limit);

      expect(result, equals(Left(networkError)));
    });
  });
}