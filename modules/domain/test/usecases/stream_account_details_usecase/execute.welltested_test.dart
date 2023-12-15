import 'execute.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:domain/usecases/stream_account_details_usecase.dart';

@GenerateMocks([UserRepository])
void main() {
  late StreamAccountDetailsUseCaseUseCase useCase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    useCase = StreamAccountDetailsUseCaseUseCase(mockUserRepository);
  });

  group('execute', () {
    final accountDetails = AccountDetails(
      id: 1,
      name: 'Test User',
      phoneNumber: '1234567890',
    );

    test('should return AccountDetails when getUserDetails is successful',
        () async {
      when(mockUserRepository.getUserDetails())
          .thenAnswer((_) async => Right(accountDetails));

      final result = await useCase.execute();

      expect(result, equals(Right(accountDetails)));
    });

    test('should return NetworkError when getUserDetails fails', () async {
      final networkError = NetworkError('Error retrieving user details', 500);

      when(mockUserRepository.getUserDetails())
          .thenAnswer((_) async => Left(networkError));

      final result = await useCase.execute();

      expect(result, equals(Left(networkError)));
    });
  });
}