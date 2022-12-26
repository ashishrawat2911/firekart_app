import 'package:domain/usecases/set_user_profile_data_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late SetProfileUserDataUseCase setProfileUserDataUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    setProfileUserDataUseCase =
        SetProfileUserDataUseCase(mockFirebaseRepository);
  });

  test('Test setProfileUserDataUseCase', () async {
    await setProfileUserDataUseCase.execute();
    verify(mockFirebaseRepository.setAccountDetails());
  });
}
