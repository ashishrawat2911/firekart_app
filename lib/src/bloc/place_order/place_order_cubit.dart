import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/cart_status/cart_status_bloc.dart';
import 'package:fluttercommerce/src/bloc/place_order/place_order.dart';
import 'package:fluttercommerce/src/core/utils/connectivity.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/models/account_details_model.dart';
import 'package:fluttercommerce/src/models/cartModel_model.dart';
import 'package:fluttercommerce/src/models/order_model.dart';
import 'package:fluttercommerce/src/repository/firestore_repository.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderCubit extends Cubit<PlaceOrderState> {
  var firebaseRepo = AppInjector.get<FirestoreRepository>();

  PlaceOrderCubit() : super(PlaceOrderState.idle());

  placeOrder(List<CartModel> cartModel, PaymentSuccessResponse response,
      Address orderAddress) async {
    emit(PlaceOrderState.orderPlacedInProgress());
    if (await ConnectionStatus.getInstance().checkConnection()) {
      try {
        await firebaseRepo
            .placeOrder(_orderFromCartList(cartModel, response, orderAddress));
        await firebaseRepo.emptyCart();
        emit(PlaceOrderState.orderSuccessfullyPlaced());
      } catch (e) {
        emit(OrderNotPlaced(e.toString()));
      }
    } else {
      emit(OrderNotPlaced(StringsConstants.connectionNotAvailable));
    }
  }

  OrderModel _orderFromCartList(List<CartModel> cartModel,
      PaymentSuccessResponse response, Address orderAddress) {
    var cartItems = cartModel;

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
          "${cartModel.priceInCart}${DateTime.now().millisecondsSinceEpoch}",
      orderItems: getOrderItems(),
      paymentId: response.paymentId,
      signature: response.signature,
      price: cartModel.priceInCart,
      orderAddress: orderAddress,
    );
    print(orderModel);
    return orderModel;
  }
}
