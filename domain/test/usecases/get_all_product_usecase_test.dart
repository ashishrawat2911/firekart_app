import 'package:domain/usecases/get_all_product_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetAllProductsUseCase getAllProductsUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getAllProductsUseCase = GetAllProductsUseCase(mockFirebaseRepository);
  });

  test('Test getAllProductsUseCase', () async {
    when(mockFirebaseRepository.getAllProducts(all: false)).thenAnswer(
      (_) => Future.value([]),
    );
    final value = await getAllProductsUseCase.execute();
    verify(mockFirebaseRepository.getAllProducts(all: false));
    expect(value, []);
  });
}
