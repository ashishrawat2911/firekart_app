import 'watch.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/models/cart_model.dart';

@GenerateMocks([CartRepository])
void main() {
  late GetCartStatusUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() {
    mockCartRepository = MockCartRepository();
    useCase = GetCartStatusUseCase(mockCartRepository);
  });

  group('watch', () {
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

    test('should stream List<Cart> when cart data is retrieved successfully',
        () {
      when(mockCartRepository.watchCarts())
          .thenAnswer((_) => Stream.value(cartList));

      expect(useCase.watch(), emitsInOrder([cartList]));
    });

    test('should throw NetworkError when cart data retrieval fails', () {
      when(mockCartRepository.watchCarts())
          .thenAnswer((_) => Stream.error(NetworkError("",0)));

      expect(useCase.watch(), emitsError(isA<NetworkError>()));
    });
  });
}