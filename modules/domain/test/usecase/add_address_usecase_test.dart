import 'package:dartz/dartz.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/add_address_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late UserRepository userRepository;
  late AddAddressUseCase addAddressUseCase;
  setUpAll(() {
    userRepository = MockUserRepository();
    addAddressUseCase = AddAddressUseCase(userRepository);
  });

  test('Test Add Adress Test to Pass ', () async {
    when(userRepository.addAddress(mockAddAddress))
        .thenAnswer((realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    final result = await addAddressUseCase.execute(mockAddAddress);
    verify(userRepository.addAddress(mockAddAddress)).called(1);
    expect(true, result.isRight());
    expect('success', (result as Right<NetworkError, EmptyEntity>).value.message);
  });

  test('Test Add Adress Test to Pass fail', () async {
    when(userRepository.addAddress(mockAddAddress))
        .thenAnswer((realInvocation) => Future(() => left(NetworkError('', 402))));
    final result = await addAddressUseCase.execute(mockAddAddress);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, void>).value.errorMessage);
  });
}
