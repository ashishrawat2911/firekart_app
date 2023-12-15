import 'execute.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/set_device_token_usecase.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SetDeviceTokenUseCase setDeviceTokenUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    setDeviceTokenUseCase = SetDeviceTokenUseCase(mockAuthRepository);
  });

  group('execute', () {
    const deviceToken = '123';

    test('should call setDeviceToken method in AuthRepository with deviceToken',
        () async {
      when(mockAuthRepository.setDeviceToken(deviceToken))
          .thenAnswer((_) => Future.value());

      await setDeviceTokenUseCase.execute(deviceToken);

      verify(mockAuthRepository.setDeviceToken(deviceToken)).called(1);
    });

    test(
        'should throw an exception when setDeviceToken method in AuthRepository throws an exception',
        () async {
      final exception = Exception('Some error message');
      when(mockAuthRepository.setDeviceToken(deviceToken))
          .thenThrow(exception);

      expect(() => setDeviceTokenUseCase.execute(deviceToken),
          throwsA(isA<Exception>()));
      verify(mockAuthRepository.setDeviceToken(deviceToken)).called(1);
    });
  });
}