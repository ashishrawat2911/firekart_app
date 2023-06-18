/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
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
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercommerce/presentation/features/phone_login/view_model/phone_login_view_model.dart';

void main() {
  group('PhoneLoginViewModel', () {
    late PhoneLoginViewModel viewModel;

    setUp(() {
      viewModel = PhoneLoginViewModel();
    });

    test('validateButton - valid phone number', () {
      const phoneNumber = '1234567890';
      viewModel.validateButton(phoneNumber);
      expect(viewModel.state.isButtonEnabled, true);
    });

    test('validateButton - empty phone number', () {
      const phoneNumber = '';
      viewModel.validateButton(phoneNumber);
      expect(viewModel.state.isButtonEnabled, false);
    });

    test('validateButton - invalid phone number', () {
      const phoneNumber = '123';
      viewModel.validateButton(phoneNumber);
      expect(viewModel.state.isButtonEnabled, false);
    });
  });
}
