import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static getCache({@required String key}) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final data = prefs.getString('$key');
    return data;
  }

  static Future<void> setCache(
      {@required dynamic key, @required dynamic data}) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('$key', data.toString());
  }

  static Future<void> removeCache({@required dynamic key}) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('$key', null);
  }
}
