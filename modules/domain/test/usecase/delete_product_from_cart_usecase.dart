import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.mocks.dart';

void main() {
  late MockCartRepository cartRepository;
  late ProductDeleteCartUseCase deleteCartUseCase;

  setUpAll(() {
    cartRepository = MockCartRepository();
    deleteCartUseCase = ProductDeleteCartUseCase(cartRepository);
  });

  test('Delete Product From Cart Use Case Test Passed', () async {
    const productId = 123;
    when(deleteCartUseCase.execute(productId))
        .thenAnswer((realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    final value = await deleteCartUseCase.execute(productId);
    verify(deleteCartUseCase.execute(productId)).called(1);
    expect(true, value.isRight());
  });
  test('Delete Product From Cart Use Case Test Failed', () async {
    const productId = 123;
    when(deleteCartUseCase.execute(productId))
        .thenAnswer((realInvocation) => Future(() => left(NetworkError('', 402))));
    final value = await deleteCartUseCase.execute(productId);
    verify(deleteCartUseCase.execute(productId)).called(1);
    expect(true, value.isLeft());
    expect('', (value as Left<NetworkError, void>).value.errorMessage);
  });
}
