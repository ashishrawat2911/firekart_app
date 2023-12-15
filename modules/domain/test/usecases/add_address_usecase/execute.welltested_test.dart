import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/add_address_usecase.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/models/network.dart';

@GenerateMocks([UserRepository])
void main() {
  late AddAddressUseCase useCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = AddAddressUseCase(mockUserRepository);
  });

  group('execute', () {
    final addAddress = AddAddress(
      name: 'test_name',
      pincode: 'test_pincode',
      address: 'test_address',
      city: 'test_city',
      state: 'test_state',
      phoneNumber: 'test_phoneNumber',
      isDefault: false,
    );

    final emptyEntity = EmptyEntity(true, 'Address added successfully');

    test('should return EmptyEntity when address is added successfully',
        () async {
      when(mockUserRepository.addAddress(addAddress))
          .thenAnswer((_) async => Right(emptyEntity));

      final result = await useCase.execute(addAddress);

      expect(result, equals(Right(emptyEntity)));
    });

    test('should return NetworkError when address addition fails', () async {
      final networkError = NetworkError('Error adding address', 500);

      when(mockUserRepository.addAddress(addAddress))
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute(addAddress);

      expect(result, equals(Left(networkError)));
    });
  });
}