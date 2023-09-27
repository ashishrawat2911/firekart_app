import 'package:core/di/di.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/models/login.dart';
import 'package:domain/models/network.dart';
import 'package:domain/network_result/network_error.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localization/localization.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:notification/push_notification/push_notification_handler.dart';
import 'package:presentation/features/otp_login/view/otp_login_screen.dart';
import 'package:presentation/features/otp_login/view_model/otp_login_view_model.dart';

import '../../../common/app.dart';
import 'otp_login_screen_test.mocks.dart';

@GenerateMocks([
  PushNotificationHandler,
  AuthRepository,
])
void main() {
  late OtpLoginViewModel viewModel;
  late MockAuthRepository authRepository;
  late MockPushNotificationHandler pushNotificationHandler;

  const String testPhoneNumber = '+1234567890';
  const String testOtpCode = '1111';
  const String testErrorMessage = 'Some Error Message';

  setUpAll(() {
    authRepository = MockAuthRepository();
    pushNotificationHandler = MockPushNotificationHandler();
    viewModel = OtpLoginViewModel(
      SendOTPUseCase(authRepository),
      pushNotificationHandler,
    );
    getIt.registerFactory(() => viewModel);
  });

  testWidgets('OtpLoginScreen UI Test', (WidgetTester tester) async {
    when(authRepository.login(testPhoneNumber))
        .thenAnswer((realInvocation) async => Right(Login('2222', false)));

    await tester.pumpWidget(
      const TestApp(
        home: OtpLoginScreen(phoneNumber: testPhoneNumber),
      ),
    );

    expect(find.text(Localization.value.mobileVerification), findsOneWidget);
    expect(
      find.text(Localization.value.mobileVerificationDesc),
      findsOneWidget,
    );
    expect(find.text(Localization.value.changeNumber), findsOneWidget);
    expect(find.text(Localization.value.confirmOtp), findsOneWidget);

    await tester.enterText(find.byType(TextField), '111');
    expect(viewModel.state.isButtonEnabled, false);

    await tester.enterText(find.byType(TextField), '1111');
    expect(viewModel.state.isButtonEnabled, true);

    when(authRepository.verifyOtp(testPhoneNumber, '1111')).thenAnswer(
      (realInvocation) async => Left(NetworkError(testErrorMessage, 401)),
    );

    await tester.tap(find.text(Localization.value.confirmOtp));
    await tester.pump();

    // expect(find.text(testErrorMessage), findsOneWidget);

    await tester.tap(find.text(Localization.value.resendOtp));
    await tester.pump();

    when(authRepository.verifyOtp(testPhoneNumber, '1111')).thenAnswer(
      (realInvocation) async => Right(EmptyEntity(true, 'success')),
    );
    await tester.tap(find.text(Localization.value.confirmOtp));
    await tester.pump();
  });
}
