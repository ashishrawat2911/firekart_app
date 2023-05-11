import 'package:fluttercommerce/domain/usecases/get_current_user_phone_number_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetCurrentUserPhoneNumberUseCase getCurrentUserPhoneNumberUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getCurrentUserPhoneNumberUseCase =
        GetCurrentUserPhoneNumberUseCase(mockFirebaseRepository);
  });

  test('Test GetCurrentUserPhoneNumberUseCase', () async {
    const testNumber = '0000000000';
    when(mockFirebaseRepository.getPhoneNumber()).thenAnswer(
      (_) => testNumber,
    );
    final value = getCurrentUserPhoneNumberUseCase.execute();
    verify(mockFirebaseRepository.getPhoneNumber());
    expect(value, testNumber);
  });
}
