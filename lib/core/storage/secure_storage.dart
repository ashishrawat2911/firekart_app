import 'package:encrypt/encrypt.dart';
import 'package:fluttercommerce/core/storage/prefrences.dart';
import 'package:injectable/injectable.dart';

///Securely holds data in key,value pairs
@singleton
class SecureStorage {
  final Preferences _preferences;

  SecureStorage(this._preferences);

  final key = Key.fromBase64('dzj1DkENgmPBxA+eWKlHng==');
  final iv = IV.fromBase64('dzj1DkENgmPBxA+eWKlHng==');

  late final _encrypter = Encrypter(AES(
    key,
    mode: AESMode.cbc,
  ));

  Future<String> secureGet(String key) async {
    try {
      final value = await _preferences.getString(key);
      return _encrypter.decrypt16(value, iv: iv);
    } catch (e) {
      return "";
    }
  }

  Future secureSet(String key, String value) async {
    if (value != '') {
      await _preferences.setString(
        key,
        _encrypter.encrypt(value, iv: iv).base16,
      );
    }
  }

  Future<bool> clearAll() {
    return _preferences.clearAll();
  }
}
