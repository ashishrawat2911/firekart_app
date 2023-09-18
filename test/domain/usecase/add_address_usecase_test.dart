import 'package:dartz/dartz.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/repository/user_repository.dart';
import 'package:firekart/domain/usecases/add_address_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.mocks.dart';

void main() {
  late UserRepository userRepository;
  late AddAddressUseCase addAddressUseCase;
  setUpAll(() {
    userRepository = MockUserRepository();
    addAddressUseCase = AddAddressUseCase(userRepository);
  });

  test('Test Add Adress Test to Pass ', () async {
    late MockAddAddress addAddress = MockAddAddress();
    when(userRepository.addAddress(addAddress)).thenAnswer((realInvocation) => Future.value(right(EmptyEntity(true, 'success'))));
    await addAddressUseCase.execute(addAddress);
    verify(userRepository.addAddress(addAddress));
  });

  test('Test Add Adress Test to Pass fail', () async {
    late MockAddAddress addAddress = MockAddAddress();
    when(userRepository.addAddress(addAddress))
        .thenAnswer((realInvocation) => Future(() => left(NetworkError('', 402))));
    final result = await addAddressUseCase.execute(addAddress);
    expect(true, result.isLeft());
    expect('', (result as Left<NetworkError, void>).value.errorMessage);
  });
}
