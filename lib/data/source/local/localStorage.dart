import 'package:firekart/core/storage/prefrences_storage.dart';
import 'package:firekart/core/storage/secure_storage.dart';
import 'package:injectable/injectable.dart';

class _Const {
  static const String isLoggedIn = "isLoggedInd";
  static const String token = "token";
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

  void setAccessToken(String token) {
    _secureStorage.secureSet(_Const.token, token);
  }

  void setLogin(bool value) {
    _preferencesStorage.setBool(_Const.isLoggedIn, value);
  }

  void clear() {
    _preferencesStorage.clearAll();
    _secureStorage.clearAll();
  }
}
