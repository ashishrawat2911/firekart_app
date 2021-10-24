import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/modules/checkout/state/payment_state.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentCubit extends Cubit<PaymentState> {
  var _razorPay;

  PaymentCubit() : super(Idle()) {
    _razorPay = Razorpay();
    _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout(num price) {
    // int.parse((price*100).toString());
    var options = {
      'key': 'Add-Key-Here',
      'amount': price * 100,
      'name': 'Flutter-Commerce',
      'description': 'This is a Text Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm', "phonepe"]
      }
    };

    try {
      _razorPay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    emit(PaymentState.paymentSuccessful(response));
    print("SUCCESS: " + response.paymentId);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    emit(PaymentState.paymentError(response.message));
    print("ERROR: " + response.code.toString() + " - " + response.message);
//        context);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print(response);
    print("EXTERNAL_WALLET: " + response.walletName);
  }
}
