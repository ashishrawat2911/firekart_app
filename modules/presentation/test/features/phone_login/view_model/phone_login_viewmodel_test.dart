import 'package:flutter_test/flutter_test.dart';
import 'package:presentation/features/phone_login/view_model/phone_login_view_model.dart';

void main() {
  test('PhoneLoginViewModel validateButton Test', () {
    final viewModel = PhoneLoginViewModel();

    viewModel.validateButton('1234567890');
    expect(viewModel.state.isButtonEnabled, true);

    viewModel.validateButton('12345');
    expect(viewModel.state.isButtonEnabled, false);
  });
}
