import 'package:firekart/domain/models/account_details_model.dart';
import 'package:firekart/domain/usecases/get_account_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late GetAccountDetailsUseCase getAccountDetailsUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    getAccountDetailsUseCase = GetAccountDetailsUseCase(mockFirebaseRepository);
  });

  test('Test GetAccountDetailsUseCase', () async {
    final accountDetails = MockAccountDetails();
    when(mockFirebaseRepository.fetchUserDetails()).thenAnswer(
      (_) => Future.value(accountDetails),
    );
    await getAccountDetailsUseCase.execute();
    verify(mockFirebaseRepository.fetchUserDetails());
  });
}
