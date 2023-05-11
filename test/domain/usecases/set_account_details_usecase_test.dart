import 'package:fluttercommerce/domain/usecases/get_account_details_usecase.dart';
import 'package:fluttercommerce/domain/usecases/set_account_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late SetAccountDetailsUseCase setAccountDetailsUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    setAccountDetailsUseCase = SetAccountDetailsUseCase(mockFirebaseRepository);
  });

  test('Test SetAccountDetailsUseCase', () async {
    final account=MockAccountDetails();
    await setAccountDetailsUseCase.execute(account);
    verify(mockFirebaseRepository.addUserDetails(account));
  });
}
