import 'package:firekart/domain/usecases/get_cart_status_use_case.dart';
import 'package:firekart/domain/usecases/stream_account_details_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'usecase.mocks.dart';

void main() {
  late StreamAccountDetailsUseCaseUseCase streamAccountDetailsUseCaseUseCase;
  late MockFirebaseRepository mockFirebaseRepository;
  setUpAll(() {
    mockFirebaseRepository = MockFirebaseRepository();
    streamAccountDetailsUseCaseUseCase = StreamAccountDetailsUseCaseUseCase(mockFirebaseRepository);
  });

  test('Test streamAccountDetailsUseCaseUseCase', () async {
    final account=MockAccountDetails();
    when(mockFirebaseRepository.streamUserDetails()).thenAnswer(
          (_) => Stream.value(account),
    );
    final value = await streamAccountDetailsUseCaseUseCase.execute().first;
    verify(mockFirebaseRepository.streamUserDetails());
    expect(value, account);
  });
}
