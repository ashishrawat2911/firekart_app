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
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/core/performance/performance_moniter.dart';
import 'package:fluttercommerce/presentation/features/phone_login/view/phone_login_screen.dart';
import 'package:fluttercommerce/presentation/features/phone_login/view_model/phone_login_view_model.dart';
import 'package:fluttercommerce/presentation/widgets/commom_text_field.dart';
import 'package:fluttercommerce/presentation/widgets/common_button.dart';
import 'package:get_it/get_it.dart';

import '../../util/base_material_widget.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerFactory(PhoneLoginViewModel.new);
  GetIt.instance
      .registerFactory<PerformanceMonitor>(DefaultPerformanceMonitor.new);
  group('LoginScreen', () {
    testWidgets('renders login card correctly', (WidgetTester tester) async {
      await tester.pumpWidget(baseApp(const LoginScreen()));

      expect(find.text(Localization.value.login), findsOneWidget);
      expect(find.text(Localization.value.phoneLoginText), findsOneWidget);
      expect(find.byType(CustomTextField), findsOneWidget);
      expect(find.byType(CommonButton), findsOneWidget);
    });

    testWidgets('enables continue button when phone number is valid',
        (WidgetTester tester) async {
      await tester.pumpWidget(baseApp(const LoginScreen()));

      await tester.enterText(find.byType(CustomTextField), '1234567890');
      await tester.pump();

      final button = tester.widget<CommonButton>(find.byType(CommonButton));
      expect(button.isEnabled, true);
    });

    testWidgets('disables continue button when phone number is empty',
        (WidgetTester tester) async {
      await tester.pumpWidget(baseApp(const LoginScreen()));

      await tester.pump();

      final button = tester.widget<CommonButton>(find.byType(CommonButton));
      expect(button.isEnabled, false);
    });
  });
}
