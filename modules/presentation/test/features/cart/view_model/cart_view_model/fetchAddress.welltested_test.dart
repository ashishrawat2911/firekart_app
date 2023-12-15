import 'fetchAddress.welltested_test.mocks.dart';import 'package:dartz/dartz.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';

@GenerateMocks([GetAddressUseCase])
void main() {
  late CartViewModel viewModel;
  late MockGetAddressUseCase mockGetAddressUseCase;

  setUp(() {
    mockGetAddressUseCase = MockGetAddressUseCase();
    viewModel = CartViewModel(null, null, null, null, mockGetAddressUseCase);
  });

  group('fetchAddress', () {
    final accountDetails = AccountDetailsModel(
      id: 1,
      name: 'Test User',
      address: 'Test Address',
      phoneNumber: '1234567890',
    );

    test('should add AccountDetails to state when fetch is successful', () async {
      when(mockGetAddressUseCase.execute())
          .thenAnswer((_) async => Right([accountDetails]));

      await viewModel.fetchAddress();

      expect(viewModel.state.accountDetailsList, contains(accountDetails));
    });

    test('should not add AccountDetails to state when fetch fails', () async {
      final networkError = NetworkError('Error fetching address', 500);

      when(mockGetAddressUseCase.execute())
          .thenAnswer((_) async => Left(networkError));

      await viewModel.fetchAddress();

      expect(viewModel.state.accountDetailsList, isEmpty);
    });
  });
}