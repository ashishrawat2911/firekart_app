import 'package:core/di/di.dart';
import 'package:data/error/app_error_model.dart';
import 'package:data/error/network_error_handler.dart';
import 'package:data/mapper/data_mapper.dart';
import 'package:data/model/common/base_response.dart';
import 'package:data/model/response/login_response_model.dart';
import 'package:data/repository/auth_repository.dart';
import 'package:data/source/local/local_storage.dart';
import 'package:data/source/remote/api_service.dart';
import 'package:dio/dio.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_test.mocks.dart';

@GenerateMocks([
  ApiService,
  LocalStorage,
])
void main() {
  late ApiService apiService;
  late LocalStorage localStorage;
  late DataMapper dataMapper;
  late AuthRepository authRepository;
  setUpAll(() {
    getIt.registerFactory(AppErrorModel.new);
    getIt.registerFactory(
      () => NetworkErrorHandler(getIt.call()),
    );

    dataMapper = DataMapper();
    apiService = MockApiService();
    localStorage = MockLocalStorage();
    authRepository = AuthRepositoryImpl(localStorage, dataMapper, apiService);
  });

  test('Login Success New User', () async {
    const phone = '+919090909090';

    when(apiService.login(phone)).thenAnswer(
      (realInvocation) async =>
          NetworkResponse(true, 'success', LoginResponseModel('2282', true)),
    );
    await authRepository.login(phone).then((result) {
      expect(true, result.isRight());
      result.forEach((r) {
        expect('2282', r.otp);
        expect(true, r.newUser);
      });
    });
  });
  test('Login Success Old User', () async {
    const phone = '+919090909090';

    when(apiService.login(phone)).thenAnswer(
      (realInvocation) async =>
          NetworkResponse(true, 'success', LoginResponseModel('2282', false)),
    );
    await authRepository.login(phone).then((result) {
      expect(true, result.isRight());
      result.forEach((r) {
        expect('2282', r.otp);
        expect(false, r.newUser);
      });
    });
  });
  test('Login Fail', () async {
    const phone = '+919090909090';
    when(apiService.login(phone)).thenThrow(
      DioException(
        type: DioExceptionType.badResponse,
        response: Response(
          data: {'message': 'Error', 'status': 500},
          requestOptions: RequestOptions(),
        ),
        requestOptions: RequestOptions(),
      ),
    );
    await authRepository.login(phone).then((result) {
      expect(true, result.isLeft());
      result.leftMap((l) {
        expect('Error', l.errorMessage);
      });
    });
  });
}
