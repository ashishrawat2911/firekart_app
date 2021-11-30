import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/cart/state/payment_state.dart';

// TODO(ashishrawat2911): add Payment gateway.
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(Idle()) {}

  void openCheckout(num price) {
    try {
      Future.delayed(const Duration(seconds: 2), () {
        _handlePaymentSuccess('Successful');
      });
    } catch (e) {
      print(e);
    }
  }

  void _handlePaymentSuccess(response) {
    emit(PaymentState.paymentSuccessful(response));
    print("SUCCESS: ");
  }
}
