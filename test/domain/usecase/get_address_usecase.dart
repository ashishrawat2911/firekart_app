import 'package:dartz/dartz.dart';
import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/models/network.dart';
import 'package:firekart/domain/network_result/network_error.dart';
import 'package:firekart/domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:firekart/domain/usecases/edit_address_usecase.dart';
import 'package:firekart/domain/usecases/get_address_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'usecase_test.dart';
import 'usecase_test.mocks.dart';

void main() {
  late MockUserRepository userRepository;
  late GetAddressUseCase getAddressUseCase;

  setUpAll(() {
    userRepository = MockUserRepository();
    getAddressUseCase = GetAddressUseCase(userRepository);
    verifyNever(getAddressUseCase.execute()).called(0);
  });

  test('Get Address UseCase Test Passed', () async {
    List<Address> addresses = [mockAddress];
    when(getAddressUseCase.execute()).thenAnswer((realInvocation) => Future.value(right(addresses)));
    final value = await getAddressUseCase.execute();
    verify(getAddressUseCase.execute()).called(1);
    expect(true, value.isRight());
    expect(value, Right<NetworkError, List<Address>>(addresses)); //Test both either classess
    expect((value as Right<NetworkError, List<Address>>).value, addresses); //Test on addrress class
  });

  test('Get Address UseCase Test Failed', () async {
    List<Address> addresses = [mockAddress];
    when(getAddressUseCase.execute()).thenAnswer((realInvocation) => Future.value(left(NetworkError('', 402))));
    final value = await getAddressUseCase.execute();
    verify(getAddressUseCase.execute()).called(1);
    expect(true, value.isLeft());
    expect('', (value as Left<NetworkError, List<Address>>).value.errorMessage);
  });
}
