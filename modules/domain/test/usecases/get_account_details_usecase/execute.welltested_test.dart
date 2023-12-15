import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/get_account_details_usecase.dart';
import 'package:domain/models/account_details_model.dart';

@GenerateMocks([UserRepository])
void main() {
  late GetAccountDetailsUseCase useCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = GetAccountDetailsUseCase(mockUserRepository);
  });

  group('execute', () {
    final accountDetails = AccountDetails(
      id: 1,
      name: 'test_name',
      phoneNumber: 'test_phone_number',
    );

    test('should return AccountDetails when user details are retrieved successfully',
        () async {
      when(mockUserRepository.getUserDetails())
          .thenAnswer((_) async => Right(accountDetails));

      final result = await useCase.execute();

      expect(result, equals(Right(accountDetails)));
    });

    test('should return NetworkError when user details retrieval fails',
        () async {
      final networkError = NetworkError(
        'Error retrieving user details',
        500,
      );

      when(mockUserRepository.getUserDetails())
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute();

      expect(result, equals(Left(networkError)));
    });
  });
}