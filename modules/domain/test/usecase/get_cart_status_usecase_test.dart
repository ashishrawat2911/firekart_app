import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/cart_repository.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late CartRepository cartRepository;
  late GetCartStatusUseCase getCartStatusUseCase;

  setUpAll(() {
    cartRepository = MockCartRepository();
    getCartStatusUseCase = GetCartStatusUseCase(cartRepository);
  });

  test('Test Get Cart Status Test Passed ', () async {
    List<Cart> cart = [mockCart];
    when(cartRepository.getCarts()).thenAnswer((realInvocation) => Future.value(right(cart)));
    final result = await getCartStatusUseCase.execute();
    verify(cartRepository.getCarts()).called(1);
    expect(true, result.isRight());
    expect(result, Right<NetworkError, List<Cart>>(cart));
  });

  test('Test Get Cart Status Test Failed', () async {
    when(cartRepository.getCarts()).thenAnswer((realInvocation) => Future.value(left(NetworkError('', 402))));
    final result = await getCartStatusUseCase.execute();
    verify(cartRepository.getCarts()).called(1);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, List<Cart>>).value.errorMessage);
  });

  test('Test Cart Watch Passed', () async {
   final cartStream =Stream.value([mockCart]);
    when(cartRepository.watchCarts()).thenAnswer((_) {
      return cartStream;
    });
    final result = getCartStatusUseCase.watch();
    expect( result, cartStream);
  });


}
