import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_login_state.freezed.dart';

@freezed
abstract class PhoneLoginState with _$PhoneLoginState {
  const factory PhoneLoginState({
    String? codeCountDown,
    @Default(false) bool isButtonEnabled,
    @Default(false) bool phoneLoading,
    String? error,
  }) = _PhoneLoginState;
}
