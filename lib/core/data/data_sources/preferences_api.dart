import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesApi {
  final _preferences = SharedPreferencesAsync();

  Future<dynamic> getJson(String key) async {
    final string = await _preferences.getString(key);
    if (string == null) return null;
    return jsonDecode(string);
  }

  Future<void> setJson(String key, dynamic value) {
    if (value == null) {
      return _preferences.remove(key);
    }
    final string = jsonEncode(value);
    return _preferences.setString(key, string);
  }
}
