import 'package:domain/models/cart_model.dart';
import 'package:domain/usecases/get_items_in_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'execute.welltested_test.mocks.dart';

@GenerateMocks([GetItemsInCartUseCase, Cart])
void main() {
  late GetItemsInCartUseCase getItemsInCartUseCase;
  late MockCart mockCart1;
  late MockCart mockCart2;

  setUp(() {
    mockCart1 = MockCart();
    mockCart2 = MockCart();
    when(mockCart1.productId).thenReturn(1);
    when(mockCart2.productId).thenReturn(2);
    when(mockCart1.numOfItems).thenReturn(3);
    when(mockCart2.numOfItems).thenReturn(2);
    getItemsInCartUseCase = GetItemsInCartUseCase();
  });

  test('Get number of items in cart for a specific product', () {
    final carts = [mockCart1, mockCart2];
    final numOfItems = getItemsInCartUseCase.execute(1, carts);
    expect(numOfItems, 3);
    verify(mockCart1.numOfItems).called(1);
  });

  test('Return 0 if product is not in cart', () {
    final carts = [mockCart1, mockCart2];
    final numOfItems = getItemsInCartUseCase.execute(3, carts);
    expect(numOfItems, 0);
  });
}
