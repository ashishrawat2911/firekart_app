import 'package:domain/usecases/get_all_orders_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetAllOrdersUseCase getAllOrdersUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getAllOrdersUseCase = GetAllOrdersUseCase(mockFirebaseRepository);
  });

  test('Test GetAllOrdersUseCase', () async {
    when(mockFirebaseRepository.getAllOrders()).thenAnswer(
      (_) => Future.value([]),
    );
    final value = await getAllOrdersUseCase.execute();
    verify(mockFirebaseRepository.getAllOrders());
    expect(value, []);
  });
}
