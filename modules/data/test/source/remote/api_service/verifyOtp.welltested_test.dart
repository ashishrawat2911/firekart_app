import 'verifyOtp.welltested_test.mocks.dart';import 'package:data/model/common/base_response.dart';
import 'package:data/model/request/otp_verify_request_model.dart';
import 'package:data/model/response/otp_verify_response_model.dart';
import 'package:data/model/response/user_response_model.dart';
import 'package:data/source/remote/api_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

@GenerateMocks([ApiService, Dio])
void main() {
  late ApiService apiService;
  late MockApiService mockApiService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    mockApiService = MockApiService(mockDio, baseUrl: 'http://test.com');
    apiService = ApiService(mockDio, baseUrl: 'http://test.com');
  });

  group('Test ApiService ->', () {
    final otpVerifyRequestModel = OTPVerifyRequestModel('1234567890', '1234', 'Test User', 'deviceToken123');

    test('Should return OtpVerifyResponseModel when OTP verification is successful', () async {
      when(mockApiService.verifyOtp(otpVerifyRequestModel)).thenAnswer((_) => Future.value(NetworkResponse(
        true,
        'OTP verification successful',
        OtpVerifyResponseModel('test_token', UserResponseModel(1, '1234567890', 'Test User')),
      )));

      final result = await apiService.verifyOtp(otpVerifyRequestModel);

      expect(result, isA<NetworkResponse<OtpVerifyResponseModel>>());
      verify(mockApiService.verifyOtp(otpVerifyRequestModel)).called(1);
    });

    test('Should throw DioError when OTP verification fails', () async {
      when(mockApiService.verifyOtp(otpVerifyRequestModel)).thenThrow(DioError(
        requestOptions: RequestOptions(path: 'http://test.com/auth/verify-otp'),
        error: 'OTP verification failed',
      ));

      expect(() async => await apiService.verifyOtp(otpVerifyRequestModel), throwsA(isA<DioError>()));
      verify(mockApiService.verifyOtp(otpVerifyRequestModel)).called(1);
    });
  });
}