import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/login.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SendOTPUseCase sendOTPUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    sendOTPUseCase = SendOTPUseCase(mockAuthRepository);
  });

  group('execute', () {
    const phoneNumber = '1234567890';

    test('should return Right(Login) when login is successful', () async {
      final login = Login('1234', true);
      when(mockAuthRepository.login(phoneNumber))
          .thenAnswer((_) async => Right(login));

      final result = await sendOTPUseCase.execute(phoneNumber: phoneNumber);

      expect(result, equals(Right(login)));
      verify(mockAuthRepository.login(phoneNumber)).called(1);
    });

    test('should return Left(NetworkError) when login fails', () async {
      final networkError = NetworkError('Network error', 500);
      when(mockAuthRepository.login(phoneNumber))
          .thenAnswer((_) async => Left(networkError));

      final result = await sendOTPUseCase.execute(phoneNumber: phoneNumber);

      expect(result, equals(Left(networkError)));
      verify(mockAuthRepository.login(phoneNumber)).called(1);
    });
  });
}