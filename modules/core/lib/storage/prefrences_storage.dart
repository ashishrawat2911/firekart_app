import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class PreferencesStorage {
  final SharedPreferences _sharedPreferences;

  PreferencesStorage(this._sharedPreferences);

  String getString(String key) {
    return _sharedPreferences.getString(key) ?? '';
  }

  int getInt(String key) {
    return _sharedPreferences.getInt(key) ?? 0;
  }

  num getDouble(String key) {
    return _sharedPreferences.getDouble(key) ?? 0;
  }

  bool getBool(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }

  Future<void> setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    await _sharedPreferences.setDouble(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  Future<void> removePreference(String key) async {
    await _sharedPreferences.remove(key);
  }

  List<String> getKeys() => _sharedPreferences.getKeys().toList();

  Future<bool> clearAll() {
    return _sharedPreferences.clear();
  }
}
