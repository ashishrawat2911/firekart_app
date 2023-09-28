import 'package:core/di/di.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/models/login.dart';
import 'package:domain/models/network.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:domain/usecases/send_otp_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:notification/push_notification/push_notification_handler.dart';
import 'package:presentation/features/otp_login/view_model/otp_login_view_model.dart';

import '../view/otp_login_screen_test.mocks.dart';

@GenerateMocks([
  PushNotificationHandler,
  AuthRepository,
])
void main() {
  late OtpLoginViewModel viewModel;
  late MockAuthRepository mockAuthRepository;
  late MockPushNotificationHandler pushNotificationHandler;

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockAuthRepository = MockAuthRepository();
    pushNotificationHandler = MockPushNotificationHandler();
    viewModel = OtpLoginViewModel(
      SendOTPUseCase(mockAuthRepository),
      pushNotificationHandler,
    );
    getIt.registerFactory(() => viewModel);
  });

  test('validateButton sets isButtonEnabled correctly', () {
    viewModel.validateButton('1234');
    expect(viewModel.state.isButtonEnabled, true);

    viewModel.validateButton('123');
    expect(viewModel.state.isButtonEnabled, false);
  });

  test('sendOtp calls authRepository and updates state', () async {
    when(mockAuthRepository.login('+1234567890')).thenAnswer(
      (_) async => Right(Login('2222', false)),
    );

    await viewModel.sendOtp('+1234567890');

    verify(mockAuthRepository.login('+1234567890')).called(1);

    expect(viewModel.state.newUser, false);
  });

  test('loginWithOtp handles authentication correctly', () async {
    when(
      mockAuthRepository.verifyOtp(
        '+1234567890',
        '1234',
        name: 'John Doe',
      ),
    ).thenAnswer(
      (_) async => Right(EmptyEntity(true, 'success')),
    );

    await viewModel.loginWithOtp(
      '+1234567890',
      '1234',
      false,
      'John Doe',
    );

    verify(
      mockAuthRepository.verifyOtp(
        '+1234567890',
        '1234',
        name: 'John Doe',
      ),
    ).called(1);

    expect(viewModel.state.confirmOtpLoading, false);
  });
}
