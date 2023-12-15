import 'package:domain/models/account_details_model.dart';

import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/get_address_usecase.dart';

@GenerateMocks([UserRepository])
void main() {
  late GetAddressUseCase getAddressUseCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    getAddressUseCase = GetAddressUseCase(mockUserRepository);
  });

  group('execute', () {
    final addressList = [
      Address(
        id: 1,
        name: 'John Doe',
        pincode: '123456',
        address: '123 Street',
        city: 'City',
        state: 'State',
        phoneNumber: '1234567890',
        isDefault: true,
      ),
      Address(
        id: 2,
        name: 'Jane Doe',
        pincode: '654321',
        address: '321 Avenue',
        city: 'Town',
        state: 'Province',
        phoneNumber: '0987654321',
        isDefault: false,
      ),
    ];

    test('should return list of Address when fetchUserAddress is successful',
        () async {
      when(mockUserRepository.fetchUserAddress())
          .thenAnswer((_) async => Right(addressList));

      final result = await getAddressUseCase.execute();

      expect(result, equals(Right(addressList)));
      verify(mockUserRepository.fetchUserAddress()).called(1);
    });

    test('should return NetworkError when fetchUserAddress fails', () async {
      final networkError = NetworkError('Network error', 500);

      when(mockUserRepository.fetchUserAddress())
          .thenAnswer((_) async => Left(networkError));

      final result = await getAddressUseCase.execute();

      expect(result, equals(Left(networkError)));
      verify(mockUserRepository.fetchUserAddress()).called(1);
    });
  });
}