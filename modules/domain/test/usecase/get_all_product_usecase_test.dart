import 'package:dartz/dartz.dart';
import 'package:domain/models/product_model.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/product_repository.dart';
import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late ProductRepository productRepository;
  late GetAllProductsUseCase getAllProductsUseCase;

  setUpAll(() {
    productRepository = MockProductRepository();
    getAllProductsUseCase = GetAllProductsUseCase(productRepository);
  });

  test('Test Get All Product Test Passed ', () async {
    const page = 1;
    const limit = 1;
    List<Product> products = [mockProduct];
    when(productRepository.getAllProducts(page, limit)).thenAnswer((realInvocation) => Future.value(right(products)));
    final result = await getAllProductsUseCase.execute(page, limit);
    verify(productRepository.getAllProducts(page, limit)).called(1);
    expect(true, result.isRight());
    expect(result, Right<NetworkError, List<Product>>(products));
  });

  test('Test Get All Product Test Failed', () async {
    const page = 1;
    const limit = 1;
    when(productRepository.getAllProducts(page, limit))
        .thenAnswer((realInvocation) => Future.value(left(NetworkError('', 402))));
    final result = await getAllProductsUseCase.execute(page, limit);
    verify(productRepository.getAllProducts(page, limit)).called(1);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, List<Product>>).value.errorMessage);
  });
}
