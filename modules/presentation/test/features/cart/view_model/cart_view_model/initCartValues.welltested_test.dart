import 'initCartValues.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/place_order_usecase.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';
import 'package:presentation/features/cart/state/cart_state.dart';

@GenerateMocks([ProductDeleteCartUseCase, PlaceOrderUseCase, GetAddressUseCase, GetCartStatusUseCase, UpdateCartUseCase, CartState])
void main() {
  late CartViewModel cartViewModel;
  late MockProductDeleteCartUseCase mockProductDeleteCartUseCase;
  late MockPlaceOrderUseCase mockPlaceOrderUseCase;
  late MockGetAddressUseCase mockGetAddressUseCase;
  late MockGetCartStatusUseCase mockGetCartStatusUseCase;
  late MockUpdateCartUseCase mockUpdateCartUseCase;
  late MockCartState mockCartState;

  setUp(() {
    mockProductDeleteCartUseCase = MockProductDeleteCartUseCase();
    mockPlaceOrderUseCase = MockPlaceOrderUseCase();
    mockGetAddressUseCase = MockGetAddressUseCase();
    mockGetCartStatusUseCase = MockGetCartStatusUseCase();
    mockUpdateCartUseCase = MockUpdateCartUseCase();
    mockCartState = MockCartState();
    cartViewModel = CartViewModel(
      mockProductDeleteCartUseCase,
      mockPlaceOrderUseCase,
      mockGetCartStatusUseCase,
      mockUpdateCartUseCase,
      mockGetAddressUseCase,
    );
  });

  group('initCartValues', () {
    test('should initialize cart values', () {
      final cartValue = 10;

      when(mockCartState.copyWith(cartValue: anyNamed('cartValue'))).thenReturn(mockCartState);

      cartViewModel.initCartValues(cartValue);

      verify(mockCartState.copyWith(cartValue: cartValue)).called(1);
    });
  });
}