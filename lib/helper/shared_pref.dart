// ignore_for_file: avoid_classes_with_only_static_members
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const String _langCodeKey = "lang_code";

  static String getCachedLanguage() {
    final code = prefs.getString(_langCodeKey);
    if (code != null) {
      return code;
    } else {
      //return device Locale
      return Get.deviceLocale != null ? Get.deviceLocale!.languageCode : 'en';
    }
  }

  static Future<void> cacheLanguage(String code) async {
    await prefs.setString(_langCodeKey, code);
  }
}
