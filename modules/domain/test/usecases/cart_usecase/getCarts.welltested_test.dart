import 'getCarts.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/cart_usecase.dart';

@GenerateMocks([CartRepository])
void main() {
  late CartUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = CartUseCase(mockCartRepository);
  });

  group('getCarts', () {
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

    test('should return list of Cart when data is retrieved successfully',
        () async {
      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Right(cartList));

      final result = await useCase.getCarts();

      expect(result, equals(Right(cartList)));
    });

    test('should return NetworkError when data retrieval fails', () async {
      final networkError = NetworkError('Error retrieving data', 500);

      when(mockCartRepository.getCarts())
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.getCarts();

      expect(result, equals(Left(networkError)));
    });
  });
}