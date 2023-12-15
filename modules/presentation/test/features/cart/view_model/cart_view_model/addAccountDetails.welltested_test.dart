import 'addAccountDetails.welltested_test.mocks.dart';import 'package:domain/models/account_details_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/place_order_usecase.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:presentation/features/cart/view_model/cart_view_model.dart';

@GenerateMocks([ProductDeleteCartUseCase, PlaceOrderUseCase, GetAddressUseCase, GetCartStatusUseCase, UpdateCartUseCase])
void main() {
  late CartViewModel viewModel;
  late MockProductDeleteCartUseCase mockProductDeleteCartUseCase;
  late MockPlaceOrderUseCase mockPlaceOrderUseCase;
  late MockGetAddressUseCase mockGetAddressUseCase;
  late MockGetCartStatusUseCase mockGetCartStatusUseCase;
  late MockUpdateCartUseCase mockUpdateCartUseCase;

  setUp(() {
    mockProductDeleteCartUseCase = MockProductDeleteCartUseCase();
    mockPlaceOrderUseCase = MockPlaceOrderUseCase();
    mockGetAddressUseCase = MockGetAddressUseCase();
    mockGetCartStatusUseCase = MockGetCartStatusUseCase();
    mockUpdateCartUseCase = MockUpdateCartUseCase();

    viewModel = CartViewModel(
      mockProductDeleteCartUseCase,
      mockPlaceOrderUseCase,
      mockGetCartStatusUseCase,
      mockUpdateCartUseCase,
      mockGetAddressUseCase,
    );
  });

  group('addAccountDetails', () {
    final address1 = Address(id: 1, name: 'John', pincode: '12345', address: 'Street 1', city: 'City 1', state: 'State 1', phoneNumber: '1234567890', isDefault: true);
    final address2 = Address(id: 2, name: 'Doe', pincode: '67890', address: 'Street 2', city: 'City 2', state: 'State 2', phoneNumber: '0987654321', isDefault: false);

    test('should select the default address when available', () {
      viewModel.addAccountDetails([address1, address2]);

      expect(viewModel.state.selectedAddress, equals(address1));
    });

    test('should select the first address when no default is available', () {
      viewModel.addAccountDetails([address2]);

      expect(viewModel.state.selectedAddress, equals(address2));
    });
  });
}