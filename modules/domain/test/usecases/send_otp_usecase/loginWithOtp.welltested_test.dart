import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'loginWithOtp.welltested_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late SendOTPUseCase sendOTPUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    sendOTPUseCase = SendOTPUseCase(mockAuthRepository);
  });

  group('loginWithOtp', () {
    const phoneNumber = '1234567890';
    const smsCode = '123456';
    const name = 'Test User';

    test('should return Right(void) when OTP verification is successful',
        () async {
      final emptyData = Right<NetworkError, EmptyEntity>(EmptyEntity(true, ''));
      when(mockAuthRepository.verifyOtp(phoneNumber, smsCode, name: name))
          .thenAnswer((_) async => emptyData);

      final result =
          await sendOTPUseCase.loginWithOtp(phoneNumber, smsCode, name: name);

      expect(result, equals(emptyData));
      verify(mockAuthRepository.verifyOtp(phoneNumber, smsCode, name: name))
          .called(1);
    });

    test('should return Left(NetworkError) when OTP verification fails',
        () async {
      final networkError = NetworkError('OTP verification failed', 400);
      when(mockAuthRepository.verifyOtp(phoneNumber, smsCode, name: name))
          .thenAnswer((_) async => Left(networkError));

      final result =
          await sendOTPUseCase.loginWithOtp(phoneNumber, smsCode, name: name);

      expect(result, equals(Left(networkError)));
      verify(mockAuthRepository.verifyOtp(phoneNumber, smsCode, name: name))
          .called(1);
    });
  });
}
