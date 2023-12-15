import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/edit_address_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'execute.welltested_test.mocks.dart';

@GenerateMocks([UserRepository, NetworkError, EmptyEntity])
void main() {
  late EditAddressUseCase useCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = EditAddressUseCase(mockUserRepository);
  });

  group('execute', () {
    final editAddress = EditAddress(
      id: 1,
      name: 'John Doe',
      pincode: '123456',
      address: '123 Street',
      city: 'City',
      state: 'State',
      phoneNumber: '1234567890',
      isDefault: true,
    );

    test('should return Right(EmptyEntity) when editAddress is successful',
        () async {
      final emptyEntity = MockEmptyEntity();
      when(mockUserRepository.editAddress(editAddress))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await useCase.execute(editAddress);

      expect(result, equals(Right(emptyEntity)));
      verify(mockUserRepository.editAddress(editAddress)).called(1);
    });

    test(
        'should return Left(NetworkError) when editAddress throws NetworkError',
        () async {
      final networkError = MockNetworkError();
      when(mockUserRepository.editAddress(editAddress))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(editAddress);

      expect(result, equals(Left(networkError)));
      verify(mockUserRepository.editAddress(editAddress)).called(1);
    });
  });
}