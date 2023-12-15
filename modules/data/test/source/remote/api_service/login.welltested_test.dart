import 'login.welltested_test.mocks.dart';import 'package:data/model/common/base_response.dart';
import 'package:data/model/response/login_response_model.dart';
import 'package:data/source/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([Dio])
void main() {
  late ApiService apiService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    apiService = ApiService(mockDio, 'http://localhost:8080');
  });

  group('ApiService Test', () {
    final testPhoneNumber = '1234567890';
    final testResponse = NetworkResponse<LoginResponseModel>(
      true,
      'Success',
      LoginResponseModel('1234', false),
    );

    test('Should return NetworkResponse<LoginResponseModel> when login is successful', () async {
      when(mockDio.post(
        'http://localhost:8080/auth/login',
        data: {'phoneNumber': testPhoneNumber},
      )).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(path: 'http://localhost:8080/auth/login'),
            data: testResponse.toJson((item) => item.toJson()),
          ));

      final result = await apiService.login(testPhoneNumber);

      expect(result, equals(testResponse));
      verify(mockDio.post(
        'http://localhost:8080/auth/login',
        data: {'phoneNumber': testPhoneNumber},
      )).called(1);
    });

    test('Should throw DioError when login fails', () async {
      when(mockDio.post(
        'http://localhost:8080/auth/login',
        data: {'phoneNumber': testPhoneNumber},
      )).thenThrow(DioError(
        requestOptions: RequestOptions(path: 'http://localhost:8080/auth/login'),
      ));

      expect(() async => await apiService.login(testPhoneNumber), throwsA(isA<DioError>()));
      verify(mockDio.post(
        'http://localhost:8080/auth/login',
        data: {'phoneNumber': testPhoneNumber},
      )).called(1);
    });
  });
}