/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
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
