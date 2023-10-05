import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/edit_address_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late MockUserRepository userRepository;
  late EditAddressUseCase editAddressUseCase;

  setUpAll(() {
    userRepository = MockUserRepository();
    editAddressUseCase = EditAddressUseCase(userRepository);
    verifyNever(editAddressUseCase.execute(mockEditAddress)).called(0);
  });

  test('Delete Product From Cart Use Case Test Passed', () async {
    when(editAddressUseCase.execute(mockEditAddress))
        .thenAnswer((realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    final value = await editAddressUseCase.execute(mockEditAddress);
    verify(editAddressUseCase.execute(mockEditAddress)).called(1);
    expect(true, value.isRight());
    expect('success', (value as Right<NetworkError, EmptyEntity>).value.message);
  });

  test('Delete Product From Cart Use Case Test Failed', () async {
    when(editAddressUseCase.execute(mockEditAddress))
        .thenAnswer((realInvocation) => Future(() => left(NetworkError('', 402))));
    final value = await editAddressUseCase.execute(mockEditAddress);
    verify(editAddressUseCase.execute(mockEditAddress)).called(1);
    expect(true, value.isLeft());
    expect('', (value as Left<NetworkError, void>).value.errorMessage);
  });
}
