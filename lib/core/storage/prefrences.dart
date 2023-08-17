import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class Preferences {
  Future<SharedPreferences> _getSharedPreference() async {
    return await SharedPreferences.getInstance();
  }

  Future<String> getString(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getString(key) ?? '';
  }

  Future<int> getInt(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getInt(key) ?? 0;
  }

  Future<double> getDouble(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getDouble(key) ?? 0;
  }

  Future<bool> getBool(String key) async {
    var prefs = await _getSharedPreference();
    return prefs.getBool(key) ?? false;
  }

  Future<void> setString(String key, String value) async {
    var prefs = await _getSharedPreference();
    await prefs.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    var prefs = await _getSharedPreference();
    await prefs.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    var prefs = await _getSharedPreference();
    await prefs.setDouble(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    var prefs = await _getSharedPreference();
    await prefs.setBool(key, value);
  }

  Future<void> removePreference(String key) async {
    var prefs = await _getSharedPreference();
    await prefs.remove(key);
  }

  Future<bool> clearAll() async {
    var prefs = await _getSharedPreference();
    return prefs.clear();
  }
}
