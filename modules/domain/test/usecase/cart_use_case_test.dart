import 'package:dartz/dartz.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/cart_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late MockCartRepository cartRepository;
  late CartUseCase cartUseCase;

  setUpAll(() {
    cartRepository = MockCartRepository();
    cartUseCase = CartUseCase(cartRepository);
  });

  test('Test Get carts List Passed', () async {
    List<Cart> carts = [mockCart];
    when(cartRepository.getCarts())
        .thenAnswer((realInvocation) => Future.value(right(carts)));
    final result = await cartUseCase.getCarts();
    verify(cartRepository.getCarts()).called(1);
    expect(result, Right<NetworkError, List<Cart>>(carts));
  });

  test('Test Get carts List Failed', () async {
    when(cartRepository.getCarts()).thenAnswer(
        (realInvocation) => Future.value(left(NetworkError('', 402))));
    final result = await cartUseCase.getCarts();
    verify(cartRepository.getCarts()).called(1);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, List<Cart>>).value.errorMessage);
  });

  test('Test update cart Passed', () async {
    const quantity = 20;
    const productId = 123;
    when(cartRepository.updateCart(productId, quantity)).thenAnswer(
        (realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    final result = await cartRepository.updateCart(productId, quantity);
    verify(cartRepository.updateCart(productId, quantity)).called(1);
    expect(true, result.isRight());
    expect(
        'success', (result as Right<NetworkError, EmptyEntity>).value.message);
  });

  test('Test update cart failed', () async {
    const quantity = 20;
    const productId = 123;
    when(cartRepository.updateCart(productId, quantity)).thenAnswer(
        (realInvocation) => Future.value(left(NetworkError('xyz', 401))));
    final result = await cartRepository.updateCart(productId, quantity);
    expect(true, result.isLeft());
    expect('xyz', (result as Left<NetworkError, void>).value.errorMessage);
  });

  test('Test get no of items for product', () {
    const productId = 1;
    List<Cart> carts = [mockCart];
    final actualResponse =
        cartUseCase.getNoOfItemsForAProduct(productId, carts);
    expect(actualResponse, carts.first.numOfItems);
  });
}
