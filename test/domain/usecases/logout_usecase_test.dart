import 'package:firekart/domain/usecases/logout_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late LogoutUseCase logoutUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    logoutUseCase = LogoutUseCase(mockFirebaseRepository);
  });

  test('Test LogoutUseCase', () async {
    await logoutUseCase.execute();
    verify(mockFirebaseRepository.logoutUser());
  });
}
