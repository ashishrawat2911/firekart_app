import 'package:core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localization/localization/localization.dart';
import 'package:presentation/features/phone_login/view/phone_login_screen.dart';
import 'package:presentation/features/phone_login/view_model/phone_login_view_model.dart';

import '../../../common/app.dart';

void main() {
  late PhoneLoginViewModel mockViewModel;
  setUpAll(() {
    mockViewModel = PhoneLoginViewModel();
    getIt.registerFactory(() => mockViewModel);
  });

  testWidgets('LoginScreen UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const TestApp(
        home: LoginScreen(),
      ),
    );

    expect(find.text(Localization.value.login), findsOneWidget);

    await tester.enterText(find.byType(TextField), '1111');
    expect(mockViewModel.state.isButtonEnabled, false);

    await tester.enterText(find.byType(TextField), '1234567890');
    expect(mockViewModel.state.isButtonEnabled, true);

    await tester.pump();

    expect(find.text(Localization.value.continueText), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsNothing);

    await tester.tap(find.text(Localization.value.continueText));
    await tester.pump();
  });
}
