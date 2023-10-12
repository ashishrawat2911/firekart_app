import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/get_account_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'usecase_test.dart';
import 'usecase_test.mocks.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

void main() {
  late MockUserRepository userRepository;
  late GetAccountDetailsUseCase getAccountDetailsUseCase;

  setUpAll(() {
    userRepository = MockUserRepository();
    getAccountDetailsUseCase = GetAccountDetailsUseCase(userRepository);
    verifyNever(getAccountDetailsUseCase.execute()).called(0);
  });

  test('Get Account Details Test Passed', () async {
    when(getAccountDetailsUseCase.execute()).thenAnswer((realInvocation) => Future.value(right(mockAccountDetails)));
    final value = await getAccountDetailsUseCase.execute();
    verify(getAccountDetailsUseCase.execute()).called(1);
    expect(true, value.isRight());
  });
  test('Get Account Details Test Failed', () async {
    when(getAccountDetailsUseCase.execute()).thenAnswer((realInvocation) => Future(() => left(NetworkError('', 402))));
    final value = await getAccountDetailsUseCase.execute();
    expect(true, value.isLeft());
    expect('', (value as Left<NetworkError, void>).value.errorMessage);
  });
}
