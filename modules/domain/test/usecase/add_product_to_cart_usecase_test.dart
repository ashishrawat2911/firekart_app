import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/add_product_to_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase_test.mocks.dart';

void main() {
  late ProductAddToCartUseCase productAddToCartUseCase;
  late CartRepository cartRepository;

  setUpAll(() {
    cartRepository = MockCartRepository();
    productAddToCartUseCase = ProductAddToCartUseCase(cartRepository);
  });
  test('Test Add product to cart usecase Pass', () async {
    const productId = 123;
    when(cartRepository.addProductToCart(productId)).thenAnswer(
        (realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    final result = await productAddToCartUseCase.execute(productId);
    expect(true, result.isRight());
    expect(
        'success', (result as Right<NetworkError, EmptyEntity>).value.message);
    verify(cartRepository.addProductToCart(productId)).called(1);
  });

  test('Test Add product to cart usecase failed', () async {
    const productId = 123;
    when(cartRepository.addProductToCart(productId)).thenAnswer(
        (realInvocation) => Future.value(left(NetworkError('xyz', 401))));
    final result = await productAddToCartUseCase.execute(productId);
    expect(true, result.isLeft());
    expect('xyz', (result as Left<NetworkError, void>).value.errorMessage);
  });
}
