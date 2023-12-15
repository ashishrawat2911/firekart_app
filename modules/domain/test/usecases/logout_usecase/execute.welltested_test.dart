import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/logout_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'execute.welltested_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late LogoutUseCase logoutUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    logoutUseCase = LogoutUseCase(mockAuthRepository);
  });

  group('execute', () {
    test('should return Right(EmptyEntity) when logout is successful', () async {
      final emptyEntity = EmptyEntity(true, 'Logout successful');
      when(mockAuthRepository.logout())
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await logoutUseCase.execute();

      expect(result, equals(Right<NetworkError, EmptyEntity>(emptyEntity)));
      verify(mockAuthRepository.logout()).called(1);
    });

    test('should return Left(NetworkError) when logout fails', () async {
      final networkError = NetworkError('Logout failed', 500);
      when(mockAuthRepository.logout())
          .thenAnswer((_) async => Left(networkError));

      final result = await logoutUseCase.execute();

      expect(result, equals(Left<NetworkError, EmptyEntity>(networkError)));
      verify(mockAuthRepository.logout()).called(1);
    });
  });
}