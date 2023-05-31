// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:exchangerates/conf/sp_keys/shared_preference_constants.dart';

class MySPHelper {
  //
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //

  static bool? get trackLocation =>
      _prefs.getBool(MySPKeys.trackLocation) ?? false;
  static set trackLocation(bool? value) =>
      _setData(MySPKeys.trackLocation, value);

  //

  static Future<bool> clear() => _prefs.clear();

  //

  static _setData(String key, dynamic value) {
    if (value == null)
      _prefs.remove(key);
    else if (value is String)
      _prefs.setString(key, value);
    else if (value is bool)
      _prefs.setBool(key, value);
    else if (value is int)
      _prefs.setInt(key, value);
    else if (value is List<String>)
      _prefs.setStringList(key, value);
    else {}
  }
}
