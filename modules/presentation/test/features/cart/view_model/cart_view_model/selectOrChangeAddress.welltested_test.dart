import 'selectOrChangeAddress.welltested_test.mocks.dart';import 'package:domain/models/account_details_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';
import 'package:presentation/features/cart/state/cart_state.dart';
import 'package:domain/models/address.dart';
import 'package:presentation/routes/route_handler.dart';

@GenerateMocks([GetAddressUseCase, RouteHandler])
void main() {
  late CartViewModel viewModel;
  late MockGetAddressUseCase mockGetAddressUseCase;
  late MockRouteHandler mockRouteHandler;

  setUp(() {
    mockGetAddressUseCase = MockGetAddressUseCase();
    mockRouteHandler = MockRouteHandler();
    viewModel = CartViewModel(
      mockGetAddressUseCase,
      mockRouteHandler,
    );
  });

  group('selectOrChangeAddress', () {
    test('should fetch address when selectedAddress is null', () async {
      when(mockRouteHandler.routeTo(any)).thenAnswer((_) async => true);

      viewModel.selectOrChangeAddress();

      verify(mockGetAddressUseCase.execute()).called(1);
    });

    test('should update selectedAddress when selectedAddress is not null', () async {
      final address = Address(
        id: 1,
        name: 'Test',
        pincode: '123456',
        address: 'Test Address',
        city: 'Test City',
        state: 'Test State',
        phoneNumber: '1234567890',
        isDefault: false,
      );

      viewModel.state = CartState(selectedAddress: address);

      when(mockRouteHandler.routeTo(any)).thenAnswer((_) async => address);

      viewModel.selectOrChangeAddress();

      expect(viewModel.state.selectedAddress, equals(address));
    });
  });
}