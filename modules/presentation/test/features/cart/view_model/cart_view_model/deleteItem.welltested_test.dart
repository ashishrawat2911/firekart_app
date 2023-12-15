import 'deleteItem.welltested_test.mocks.dart';import 'package:core/message_handler/message_handler.dart';
import 'package:flutter/services.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/models/cart_model.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';

@GenerateMocks([ProductDeleteCartUseCase, MessageHandler])
void main() {
  late CartViewModel viewModel;
  late MockProductDeleteCartUseCase mockProductDeleteCartUseCase;
  late MockMessageHandler mockMessageHandler;

  setUp(() {
    mockProductDeleteCartUseCase = MockProductDeleteCartUseCase();
    mockMessageHandler = MockMessageHandler();
    viewModel = CartViewModel(mockProductDeleteCartUseCase, mockMessageHandler);
  });

  group('deleteItem', () {
    const index = 0;
    final cartList = [Cart(productId: 1, image: 'image', name: 'name', unit: 'unit', currency: 'currency', currentPrice: 10, quantityPerUnit: 1, numOfItems: 1)];

    test('should remove item from cart when delete is successful', () async {
      when(mockProductDeleteCartUseCase.execute(cartList[index].productId))
          .thenAnswer((_) async => Right(EmptyEntity(true, 'Success')));

      await viewModel.deleteItem(index);

      expect(viewModel.noOfItemsInCart, equals(0));
    });

    test('should show error message when delete fails', () async {
      final networkError = NetworkError('Error deleting item', 500);

      when(mockProductDeleteCartUseCase.execute(cartList[index].productId))
          .thenAnswer((_) async => Left(networkError));

      await viewModel.deleteItem(index);

      verify(mockMessageHandler.showSnackBar(title: networkError.errorMessage)).called(1);
    });
  });
}