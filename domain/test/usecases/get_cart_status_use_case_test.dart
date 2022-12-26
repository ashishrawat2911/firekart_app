import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetCartStatusUseCase getCartStatusUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getCartStatusUseCase = GetCartStatusUseCase(mockFirebaseRepository);
  });

  test('Test GetCartStatusUseCase', () async {
    when(mockFirebaseRepository.listenToCart()).thenAnswer(
      (_) => Stream.value([]),
    );
    final value = await getCartStatusUseCase.execute().first;
    verify(mockFirebaseRepository.listenToCart());
    expect(value, []);
  });
}
