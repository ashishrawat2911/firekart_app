import 'placeOrder.welltested_test.mocks.dart';import 'package:core/logger/app_logger.dart';
import 'package:core/message_handler/message_handler.dart';
import 'package:core/state_manager/view_model.dart';
import 'package:domain/models/account_details_model.dart';
import 'package:domain/models/add_order_model.dart';
import 'package:domain/models/cart_model.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/usecases/delete_product_from_cart_usecase.dart';
import 'package:domain/usecases/get_address_usecase.dart';
import 'package:domain/usecases/get_cart_status_use_case.dart';
import 'package:domain/usecases/place_order_usecase.dart';
import 'package:domain/usecases/update_cart_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localization/l10n/app_localizations.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:presentation/features/cart/view_model/cart_view_model.dart';
import 'package:presentation/routes/route_handler.dart';
import 'package:presentation/routes/app_router.gr.dart';

@GenerateMocks([PlaceOrderUseCase, GetAddressUseCase, GetCartStatusUseCase, UpdateCartUseCase, ProductDeleteCartUseCase])
void main() {
  late CartViewModel cartViewModel;
  late MockPlaceOrderUseCase mockPlaceOrderUseCase;
  late MockGetAddressUseCase mockGetAddressUseCase;
  late MockGetCartStatusUseCase mockGetCartStatusUseCase;
  late MockUpdateCartUseCase mockUpdateCartUseCase;
  late MockProductDeleteCartUseCase mockProductDeleteCartUseCase;

  setUp(() {
    mockPlaceOrderUseCase = MockPlaceOrderUseCase();
    mockGetAddressUseCase = MockGetAddressUseCase();
    mockGetCartStatusUseCase = MockGetCartStatusUseCase();
    mockUpdateCartUseCase = MockUpdateCartUseCase();
    mockProductDeleteCartUseCase = MockProductDeleteCartUseCase();

    cartViewModel = CartViewModel(
      mockProductDeleteCartUseCase,
      mockPlaceOrderUseCase,
      mockGetCartStatusUseCase,
      mockUpdateCartUseCase,
      mockGetAddressUseCase,
    );
  });

  group('placeOrder', () {
    test('should show error message when no address is selected', () async {
      when(mockGetAddressUseCase.execute())
          .thenAnswer((_) async => null);

      await cartViewModel.placeOrder();

      verify(MessageHandler.showSnackBar(title: AppLocalizations().noAddressSelected)).called(1);
    });

    test('should navigate to MyOrdersRoute when order is placed successfully', () async {
      final order = AddOrder(
        orderItems: [],
        paymentId: 'paymentId',
        signature: 'signature',
        price: 0,
        orderedAt: DateTime.now().toString(),
        orderStatus: 'Ordered',
      );

      when(mockPlaceOrderUseCase.execute(order))
          .thenAnswer((_) async => Right(EmptyEntity(true, 'Order placed successfully')));

      await cartViewModel.placeOrder();

      verify(RouteHandler.routeTo(MyOrdersRoute())).called(1);
    });

    test('should show error message when order placement fails', () async {
      final order = AddOrder(
        orderItems: [],
        paymentId: 'paymentId',
        signature: 'signature',
        price: 0,
        orderedAt: DateTime.now().toString(),
        orderStatus: 'Ordered',
      );

      final networkError = NetworkError('Error placing order', 500);

      when(mockPlaceOrderUseCase.execute(order))
          .thenAnswer((_) async => Left(networkError));

      await cartViewModel.placeOrder();

      verify(MessageHandler.showSnackBar(title: networkError.errorMessage)).called(1);
    });
  });
}