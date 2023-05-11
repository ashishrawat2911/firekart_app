import 'package:fluttercommerce/domain/usecases/get_all_product_usecase.dart';
import 'package:fluttercommerce/domain/usecases/search_products_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late SearchProductsUseCase searchProductsUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    searchProductsUseCase = SearchProductsUseCase(mockFirebaseRepository);
  });

  test('Test SearchProductsUseCase', () async {
    const query='test';
    when(mockFirebaseRepository.searchProducts(query)).thenAnswer(
          (_) => Future.value([]),
    );
    final value = await searchProductsUseCase.execute(query);
    verify(mockFirebaseRepository.searchProducts(query));
    expect(value, []);
  });
}
