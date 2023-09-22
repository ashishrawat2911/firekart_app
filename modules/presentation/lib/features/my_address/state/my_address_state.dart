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
import 'package:domain/models/account_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_address_state.freezed.dart';

@freezed
abstract class MyAddressState with _$MyAddressState {
  const factory MyAddressState({
    @Default(false) bool screenLoading,
    String? screenError,
    @Default(false) bool buttonLoading,
    @Default([]) List<Address> addresses,
    @Default(<AddressCardState>[]) List<AddressCardState> addressStates,
  }) = _MyAddressState;
}

@freezed
abstract class AddressCardState with _$AddressCardState {
  const factory AddressCardState({
    @Default(0) int index,
    required Address address,
    @Default(false) bool editLoading,
    @Default(false) bool setDefaultLoading,
  }) = _AddressCardState;
}
