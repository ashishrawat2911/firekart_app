import 'package:firekart/domain/usecases/get_user_logged_in_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetUserLoggedInStatusUseCase getUserLoggedInStatusUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getUserLoggedInStatusUseCase =
        GetUserLoggedInStatusUseCase(mockFirebaseRepository);
  });

  group('Test GetUserLoggedInStatusUseCase', () {
    test('Logged In', () async {
      when(mockFirebaseRepository.getCurrentUser()).thenReturn(
        true,
      );
      final value = getUserLoggedInStatusUseCase.execute();
      verify(mockFirebaseRepository.getCurrentUser());
      expect(value, true);
    });
    test('Logged out', () async {
      when(mockFirebaseRepository.getCurrentUser()).thenReturn(
        null,
      );
      final value = getUserLoggedInStatusUseCase.execute();
      verify(mockFirebaseRepository.getCurrentUser());
      expect(value, false);
    });
  });
}
