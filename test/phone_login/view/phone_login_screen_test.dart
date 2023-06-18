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
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/firebase_impl/firebase_impl.dart';
import 'package:fluttercommerce/initializer.dart';
import 'package:fluttercommerce/presentation/features/otp_login/view/otp_login_screen.dart';
import 'package:fluttercommerce/presentation/features/phone_login/view/phone_login_screen.dart';
import 'package:fluttercommerce/presentation/widgets/commom_text_field.dart';
import 'package:fluttercommerce/presentation/widgets/common_button.dart';

void main() {
  group('LoginScreen', ()  {
    initializeFirebase();
    registerDependencies();
    testWidgets('renders login card correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const LoginScreen());

      // Verify that the LoginScreen renders correctly
      expect(find.text(Localization.value.login), findsOneWidget);
      expect(find.text(Localization.value.phoneLoginText), findsOneWidget);
      expect(find.byType(CustomTextField), findsOneWidget);
      expect(find.byType(CommonButton), findsOneWidget);
    });

    testWidgets('enables continue button when phone number is valid',
        (WidgetTester tester) async {
      await tester.pumpWidget(const LoginScreen());

      // Enter a valid phone number
      await tester.enterText(find.byType(CustomTextField), '1234567890');
      await tester.pump();

      // Verify that the continue button is enabled
      final button = tester.widget<CommonButton>(find.byType(CommonButton));
      expect(button.isEnabled, true);
    });

    testWidgets('disables continue button when phone number is empty',
        (WidgetTester tester) async   {
      await tester.pumpWidget(const LoginScreen());

      // Leave the phone number field empty
      await tester.pump();

      // Verify that the continue button is disabled
      final button = tester.widget<CommonButton>(find.byType(CommonButton));
      expect(button.isEnabled, false);
    });

    testWidgets(
        'displays OTP login screen when continue button is tapped with a valid phone number',
        (WidgetTester tester) async {
      await tester.pumpWidget(const LoginScreen());

      // Enter a valid phone number
      await tester.enterText(find.byType(CustomTextField), '1234567890');
      await tester.pump();

      // Tap the continue button
      await tester.tap(find.byType(CommonButton));
      await tester.pumpAndSettle();

      // Verify that the OTP login screen is displayed
      expect(find.byType(OtpLoginScreen), findsOneWidget);
    });
  });
}
