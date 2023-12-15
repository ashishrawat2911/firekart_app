import 'updateCartValues.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/models/cart_model.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';

@GenerateMocks([UpdateCartUseCase, DeleteProductFromCartUseCase, CartViewModel])
void main() {
  late CartViewModel viewModel;
  late MockUpdateCartUseCase mockUpdateCartUseCase;
  late MockDeleteProductFromCartUseCase mockDeleteProductFromCartUseCase;

  setUp(() {
    mockUpdateCartUseCase = MockUpdateCartUseCase();
    mockDeleteProductFromCartUseCase = MockDeleteProductFromCartUseCase();
    viewModel = CartViewModel(mockDeleteProductFromCartUseCase, mockUpdateCartUseCase);
  });

  group('updateCartValues', () {
    const index = 0;
    const shouldIncrease = true;
    final cart = Cart(productId: 1, image: 'image', name: 'name', unit: 'unit', currency: 'currency', currentPrice: 10, quantityPerUnit: 1, numOfItems: 1);

    test('should update cart values when new cart value is greater than 0', () async {
      when(mockUpdateCartUseCase.execute(cart.productId, cart.numOfItems + 1))
          .thenAnswer((_) async => Right(EmptyEntity(true, 'Success')));

      await viewModel.updateCartValues(index, shouldIncrease);

      verify(mockUpdateCartUseCase.execute(cart.productId, cart.numOfItems + 1)).called(1);
    });

    test('should delete item when new cart value is 0', () async {
      when(mockDeleteProductFromCartUseCase.execute(cart.productId))
          .thenAnswer((_) async => Right(EmptyEntity(true, 'Success')));

      await viewModel.updateCartValues(index, !shouldIncrease);

      verify(mockDeleteProductFromCartUseCase.execute(cart.productId)).called(1);
    });

    test('should return NetworkError when update cart fails', () async {
      final networkError = NetworkError('Error updating cart', 500);

      when(mockUpdateCartUseCase.execute(cart.productId, cart.numOfItems + 1))
          .thenAnswer((_) async => Left(networkError));

      await viewModel.updateCartValues(index, shouldIncrease);

      verify(mockUpdateCartUseCase.execute(cart.productId, cart.numOfItems + 1)).called(1);
    });
  });
}