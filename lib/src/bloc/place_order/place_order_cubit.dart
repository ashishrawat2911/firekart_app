import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttercommerce/src/bloc/place_order/place_order.dart';
import 'package:fluttercommerce/src/core/utils/connectivity.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';
import 'package:fluttercommerce/src/models/order_model.dart';
import 'package:fluttercommerce/src/notifiers/account_provider.dart';
import 'package:fluttercommerce/src/notifiers/cart_status_provider.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';

class PlaceOrderCubit extends Cubit<PlaceOrderState> {
  var firebaseRepo = AppInjector.get<FirestoreRepository>();
  var accountProvider = AppInjector.get<AccountProvider>();

  PlaceOrderCubit() : super(PlaceOrderState.idle());

  placeOrder(CartStatusProvider cartItemStatus,
      PaymentSuccessResponse response) async {
    emit(PlaceOrderState.orderPlacedInProgress());
    if (await ConnectionStatus.getInstance().checkConnection()) {
      try {
        await firebaseRepo
            .placeOrder(_orderFromCartList(cartItemStatus, response));
        await firebaseRepo.emptyCart();
        emit(PlaceOrderState.orderSuccessfullyPlaced());
      } catch (e) {
        emit(OrderNotPlaced(e.toString()));
      }
    } else {
      emit(OrderNotPlaced(StringsConstants.connectionNotAvailable));
    }
  }

  OrderModel _orderFromCartList(
      CartStatusProvider cartItemStatus, PaymentSuccessResponse response) {
    var cartItems = cartItemStatus.cartItems;

    List<OrderItem> getOrderItems() {
      return List<OrderItem>.generate(cartItems.length, (index) {
        CartModel cartModel = cartItems[index];
        return OrderItem(
          name: cartModel.name,
          productId: cartModel.productId,
          currency: cartModel.currency,
          price: cartModel.currentPrice,
          unit: cartModel.unit,
          image: cartModel.image,
          noOfItems: cartModel.numOfItems,
        );
      });
    }

    OrderModel orderModel = OrderModel(
        orderId:
            "${cartItemStatus.priceInCart}${DateTime.now().millisecondsSinceEpoch}",
        orderItems: getOrderItems(),
        paymentId: response.paymentId,
        signature: response.signature,
        price: cartItemStatus.priceInCart,
        orderAddress: accountProvider.addressSelected);
    print(orderModel);
    return orderModel;
  }
}
