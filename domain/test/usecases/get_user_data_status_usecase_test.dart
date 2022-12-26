import 'package:domain/usecases/get_user_data_status_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetUserDataStatusUseCase getUserDataStatusUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getUserDataStatusUseCase = GetUserDataStatusUseCase(mockFirebaseRepository);
  });

  test('Test GetUserDataStatusUseCase', () async {
    when(mockFirebaseRepository.checkUserDetail()).thenAnswer(
      (_) => Future.value(true),
    );
    final value = await getUserDataStatusUseCase.execute();
    verify(mockFirebaseRepository.checkUserDetail());
    expect(value, true);
  });
}
