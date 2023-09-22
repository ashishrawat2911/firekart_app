import 'package:core/storage/prefrences_storage.dart';
import 'package:core/storage/secure_storage.dart';
import 'package:injectable/injectable.dart';

class _Const {
  static const String isLoggedIn = 'isLoggedIn';
  static const String deviceToken = 'deviceToken';
  static const String token = 'token';
}

@injectable
class LocalStorage {
  final PreferencesStorage _preferencesStorage;
  final SecureStorage _secureStorage;

  LocalStorage(this._preferencesStorage, this._secureStorage);

  bool get isLoggedIn {
    return _preferencesStorage.getBool(_Const.isLoggedIn);
  }

  String get token {
    return _secureStorage.secureGet(_Const.token);
  }

  String get deviceToken {
    return _preferencesStorage.getString(_Const.deviceToken);
  }

  Future<void> setAccessToken(String token) {
    return _secureStorage.secureSet(_Const.token, token);
  }

  Future<void> setLogin(bool value) {
    return _preferencesStorage.setBool(_Const.isLoggedIn, value);
  }

  void clear() {
    _preferencesStorage.clearAll();
    _secureStorage.clearAll();
  }

  Future<void> setDeviceToken(String deviceToken) async {
    await _preferencesStorage.setString(_Const.deviceToken, deviceToken);
  }
}
