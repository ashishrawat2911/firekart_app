import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
abstract class PaymentState {
  const factory PaymentState.idle() = Idle;

  const factory PaymentState.paymentButtonLoading() = PaymentButtonLoading;

  const factory PaymentState.paymentError(String errorMessage) = PaymentError;

  const factory PaymentState.paymentSuccessful(String response) =
      PaymentSuccessful;
}
