// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_account_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddAccountDetailsStateTearOff {
  const _$AddAccountDetailsStateTearOff();

// ignore: unused_element
  Idle idle() {
    return const Idle();
  }

// ignore: unused_element
  EditData editData(AccountDetails accountDetails) {
    return EditData(
      accountDetails,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  ButtonEnabled onButtonEnabled() {
    return const ButtonEnabled();
  }

// ignore: unused_element
  ButtonDisabled onButtonDisabled() {
    return const ButtonDisabled();
  }

// ignore: unused_element
  SaveDataLoading saveDataLoading() {
    return const SaveDataLoading();
  }

// ignore: unused_element
  Successful successful() {
    return const Successful();
  }
}

/// @nodoc
// ignore: unused_element
const $AddAccountDetailsState = _$AddAccountDetailsStateTearOff();

/// @nodoc
mixin _$AddAccountDetailsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AddAccountDetailsStateCopyWith<$Res> {
  factory $AddAccountDetailsStateCopyWith(AddAccountDetailsState value,
          $Res Function(AddAccountDetailsState) then) =
      _$AddAccountDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $AddAccountDetailsStateCopyWith<$Res> {
  _$AddAccountDetailsStateCopyWithImpl(this._value, this._then);

  final AddAccountDetailsState _value;
  // ignore: unused_field
  final $Res Function(AddAccountDetailsState) _then;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc
class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'AddAccountDetailsState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements AddAccountDetailsState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $EditDataCopyWith<$Res> {
  factory $EditDataCopyWith(EditData value, $Res Function(EditData) then) =
      _$EditDataCopyWithImpl<$Res>;
  $Res call({AccountDetails accountDetails});
}

/// @nodoc
class _$EditDataCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $EditDataCopyWith<$Res> {
  _$EditDataCopyWithImpl(EditData _value, $Res Function(EditData) _then)
      : super(_value, (v) => _then(v as EditData));

  @override
  EditData get _value => super._value as EditData;

  @override
  $Res call({
    Object accountDetails = freezed,
  }) {
    return _then(EditData(
      accountDetails == freezed
          ? _value.accountDetails
          : accountDetails as AccountDetails,
    ));
  }
}

/// @nodoc
class _$EditData implements EditData {
  const _$EditData(this.accountDetails) : assert(accountDetails != null);

  @override
  final AccountDetails accountDetails;

  @override
  String toString() {
    return 'AddAccountDetailsState.editData(accountDetails: $accountDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditData &&
            (identical(other.accountDetails, accountDetails) ||
                const DeepCollectionEquality()
                    .equals(other.accountDetails, accountDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountDetails);

  @override
  $EditDataCopyWith<EditData> get copyWith =>
      _$EditDataCopyWithImpl<EditData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return editData(accountDetails);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editData != null) {
      return editData(accountDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return editData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editData != null) {
      return editData(this);
    }
    return orElse();
  }
}

abstract class EditData implements AddAccountDetailsState {
  const factory EditData(AccountDetails accountDetails) = _$EditData;

  AccountDetails get accountDetails;
  $EditDataCopyWith<EditData> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AddAccountDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AddAccountDetailsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ButtonEnabledCopyWith<$Res> {
  factory $ButtonEnabledCopyWith(
          ButtonEnabled value, $Res Function(ButtonEnabled) then) =
      _$ButtonEnabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$ButtonEnabledCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $ButtonEnabledCopyWith<$Res> {
  _$ButtonEnabledCopyWithImpl(
      ButtonEnabled _value, $Res Function(ButtonEnabled) _then)
      : super(_value, (v) => _then(v as ButtonEnabled));

  @override
  ButtonEnabled get _value => super._value as ButtonEnabled;
}

/// @nodoc
class _$ButtonEnabled implements ButtonEnabled {
  const _$ButtonEnabled();

  @override
  String toString() {
    return 'AddAccountDetailsState.onButtonEnabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ButtonEnabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return onButtonEnabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onButtonEnabled != null) {
      return onButtonEnabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return onButtonEnabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onButtonEnabled != null) {
      return onButtonEnabled(this);
    }
    return orElse();
  }
}

abstract class ButtonEnabled implements AddAccountDetailsState {
  const factory ButtonEnabled() = _$ButtonEnabled;
}

/// @nodoc
abstract class $ButtonDisabledCopyWith<$Res> {
  factory $ButtonDisabledCopyWith(
          ButtonDisabled value, $Res Function(ButtonDisabled) then) =
      _$ButtonDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$ButtonDisabledCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $ButtonDisabledCopyWith<$Res> {
  _$ButtonDisabledCopyWithImpl(
      ButtonDisabled _value, $Res Function(ButtonDisabled) _then)
      : super(_value, (v) => _then(v as ButtonDisabled));

  @override
  ButtonDisabled get _value => super._value as ButtonDisabled;
}

/// @nodoc
class _$ButtonDisabled implements ButtonDisabled {
  const _$ButtonDisabled();

  @override
  String toString() {
    return 'AddAccountDetailsState.onButtonDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ButtonDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return onButtonDisabled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onButtonDisabled != null) {
      return onButtonDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return onButtonDisabled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onButtonDisabled != null) {
      return onButtonDisabled(this);
    }
    return orElse();
  }
}

abstract class ButtonDisabled implements AddAccountDetailsState {
  const factory ButtonDisabled() = _$ButtonDisabled;
}

/// @nodoc
abstract class $SaveDataLoadingCopyWith<$Res> {
  factory $SaveDataLoadingCopyWith(
          SaveDataLoading value, $Res Function(SaveDataLoading) then) =
      _$SaveDataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveDataLoadingCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $SaveDataLoadingCopyWith<$Res> {
  _$SaveDataLoadingCopyWithImpl(
      SaveDataLoading _value, $Res Function(SaveDataLoading) _then)
      : super(_value, (v) => _then(v as SaveDataLoading));

  @override
  SaveDataLoading get _value => super._value as SaveDataLoading;
}

/// @nodoc
class _$SaveDataLoading implements SaveDataLoading {
  const _$SaveDataLoading();

  @override
  String toString() {
    return 'AddAccountDetailsState.saveDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveDataLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return saveDataLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveDataLoading != null) {
      return saveDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return saveDataLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveDataLoading != null) {
      return saveDataLoading(this);
    }
    return orElse();
  }
}

abstract class SaveDataLoading implements AddAccountDetailsState {
  const factory SaveDataLoading() = _$SaveDataLoading;
}

/// @nodoc
abstract class $SuccessfulCopyWith<$Res> {
  factory $SuccessfulCopyWith(
          Successful value, $Res Function(Successful) then) =
      _$SuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessfulCopyWithImpl<$Res>
    extends _$AddAccountDetailsStateCopyWithImpl<$Res>
    implements $SuccessfulCopyWith<$Res> {
  _$SuccessfulCopyWithImpl(Successful _value, $Res Function(Successful) _then)
      : super(_value, (v) => _then(v as Successful));

  @override
  Successful get _value => super._value as Successful;
}

/// @nodoc
class _$Successful implements Successful {
  const _$Successful();

  @override
  String toString() {
    return 'AddAccountDetailsState.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Successful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result editData(AccountDetails accountDetails),
    @required Result loading(),
    @required Result onButtonEnabled(),
    @required Result onButtonDisabled(),
    @required Result saveDataLoading(),
    @required Result successful(),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result editData(AccountDetails accountDetails),
    Result loading(),
    Result onButtonEnabled(),
    Result onButtonDisabled(),
    Result saveDataLoading(),
    Result successful(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle value),
    @required Result editData(EditData value),
    @required Result loading(Loading value),
    @required Result onButtonEnabled(ButtonEnabled value),
    @required Result onButtonDisabled(ButtonDisabled value),
    @required Result saveDataLoading(SaveDataLoading value),
    @required Result successful(Successful value),
  }) {
    assert(idle != null);
    assert(editData != null);
    assert(loading != null);
    assert(onButtonEnabled != null);
    assert(onButtonDisabled != null);
    assert(saveDataLoading != null);
    assert(successful != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle value),
    Result editData(EditData value),
    Result loading(Loading value),
    Result onButtonEnabled(ButtonEnabled value),
    Result onButtonDisabled(ButtonDisabled value),
    Result saveDataLoading(SaveDataLoading value),
    Result successful(Successful value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class Successful implements AddAccountDetailsState {
  const factory Successful() = _$Successful;
}
