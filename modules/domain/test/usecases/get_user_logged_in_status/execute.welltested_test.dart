import 'execute.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/get_user_logged_in_status.dart';

@GenerateMocks([AuthRepository])
void main() {
  late GetUserLoggedInStatusUseCase getUserLoggedInStatusUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    getUserLoggedInStatusUseCase = GetUserLoggedInStatusUseCase(mockAuthRepository);
  });

  group('execute', () {
    test('should return true when user is logged in', () {
      when(mockAuthRepository.isLoggedIn()).thenReturn(true);

      final result = getUserLoggedInStatusUseCase.execute();

      expect(result, true);
      verify(mockAuthRepository.isLoggedIn()).called(1);
    });

    test('should return false when user is not logged in', () {
      when(mockAuthRepository.isLoggedIn()).thenReturn(false);

      final result = getUserLoggedInStatusUseCase.execute();

      expect(result, false);
      verify(mockAuthRepository.isLoggedIn()).called(1);
    });
  });
}