// ignore_for_file: constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences preferences;

  static const String KEY_IS_FIRST_TIME = 'is_first_time';
  static const String KEY_TOKEN = 'token';
  static const String IS_USER_SIGNIN = 'is_user_signin';
  static const String KEY_IS_ACTIVER_EXPERT = 'is_active_Expert';

  ///  ====== init pref ============
  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }
  
  
  /// is user signin
  static bool get isUserSignin => preferences.getBool(IS_USER_SIGNIN) ?? false;
  static set isUserSignin(bool value) => preferences.setBool(IS_USER_SIGNIN, value);
  /// isFirstTime
  static bool get isFirstTime => preferences.getBool(KEY_IS_FIRST_TIME) ?? true;
  static set isFirstTime(bool value) => preferences.setBool(KEY_IS_FIRST_TIME, value);
 /// token
  static String get token => preferences.getString(KEY_TOKEN) ?? '';
  static set token(String value) => preferences.setString(KEY_TOKEN, value);


  static void clear() {
    preferences.clear();
  }
}
