import 'init.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';

import 'cart_view_model_test.mocks.dart';

@GenerateMocks([GetCartStatusUseCase, GetAddressUseCase])
void main() {
  late CartViewModel cartViewModel;
  late MockGetCartStatusUseCase mockGetCartStatusUseCase;
  late MockGetAddressUseCase mockGetAddressUseCase;

  setUp(() {
    mockGetCartStatusUseCase = MockGetCartStatusUseCase();
    mockGetAddressUseCase = MockGetAddressUseCase();
    cartViewModel = CartViewModel(
      mockGetCartStatusUseCase,
      mockGetAddressUseCase,
    );
  });

  group('init', () {
    final cartList = Stream<List<Cart>>.value([
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
    ]);

    test('should update cartList when init is called', () async {
      when(mockGetCartStatusUseCase.watch()).thenAnswer((_) => cartList);

      await cartViewModel.init();

      expect(cartViewModel.state.cartList, equals(cartList));
    });

    test('should call fetchAddress when init is called', () async {
      when(mockGetCartStatusUseCase.watch()).thenAnswer((_) => cartList);
      when(mockGetAddressUseCase.execute())
          .thenAnswer((_) async => Right([]));

      await cartViewModel.init();

      verify(mockGetAddressUseCase.execute()).called(1);
    });
  });
}