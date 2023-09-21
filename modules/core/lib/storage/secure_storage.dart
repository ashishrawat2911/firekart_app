import 'package:core/encrypt/app_encryptor.dart';
import 'package:core/storage/prefrences_storage.dart';
import 'package:injectable/injectable.dart';

///Securely holds data in key,value pairs
@singleton
class SecureStorage {
  final PreferencesStorage _storage;
  final AppEncryptor _encryptor;

  SecureStorage(this._storage, this._encryptor);

  String secureGet(String key) {
    try {
      final value = _storage.getString(key);
      return _encryptor.decrypt(value);
    } catch (e) {
      return '';
    }
  }

  Future secureSet(String key, String value) async {
    if (value != '') {
      return _storage.setString(
        key,
        _encryptor.encrypt(value),
      );
    }
  }

  Future<bool> clearAll() {
    return _storage.clearAll();
  }
}
