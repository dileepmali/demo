import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

class StorageService {
  // SharedPreferences instance
  static late SharedPreferences _prefs;

  // GetStorage instance
  static final GetStorage _box = GetStorage();

  // -------------------
  // SharedPreferences Methods
  // -------------------

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveTokenSP(String token) async {
    await _prefs.setString('auth_token', token);
  }

  static String? getTokenSP() {
    return _prefs.getString('auth_token');
  }

  static Future<void> clearTokenSP() async {
    await _prefs.remove('auth_token');
  }

  static Future<void> saveUserSP(String userJson) async {
    await _prefs.setString('user_data', userJson);
  }

  static String? getUserSP() {
    return _prefs.getString('user_data');
  }

  static Future<void> clearAllSP() async {
    await _prefs.clear();
  }


  // -------------------
  // GetStorage Methods
  // -------------------

  static Future<void> saveTokenGS(String token) async {
    await _box.write('auth_token', token);
  }

  static String? getTokenGS() {
    return _box.read('auth_token');
  }

  static Future<void> clearTokenGS() async {
    await _box.remove('auth_token');
  }

  static Future<void> saveUserGS(String userJson) async {
    await _box.write('user_data', userJson);
  }

  static String? getUserGS() {
    return _box.read('user_data');
  }

  static Future<void> clearAllGS() async {
    await _box.erase();
  }


  // -------------------
  // Middleware related data storage (for both SharedPreferences & GetStorage)
  // You can choose either one by calling respective methods
  // -------------------

  // Token
  static Future<void> saveToken(String token, {bool useGetStorage = true}) async {
    if (useGetStorage) {
      await saveTokenGS(token);
    } else {
      await saveTokenSP(token);
    }
  }

  static String? getToken({bool useGetStorage = true}) {
    if (useGetStorage) {
      return getTokenGS();
    } else {
      return getTokenSP();
    }
  }

  static Future<void> clearToken({bool useGetStorage = true}) async {
    if (useGetStorage) {
      await clearTokenGS();
    } else {
      await clearTokenSP();
    }
  }

  // Role
  static Future<void> saveRole(String role, {bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.write('role', role);
    } else {
      await _prefs.setString('role', role);
    }
  }

  static String? getRole({bool useGetStorage = true}) {
    if (useGetStorage) {
      return _box.read('role');
    } else {
      return _prefs.getString('role');
    }
  }

  static Future<void> clearRole({bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.remove('role');
    } else {
      await _prefs.remove('role');
    }
  }

  // isOtpVerified
  static Future<void> saveIsOtpVerified(bool value, {bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.write('isOtpVerified', value);
    } else {
      await _prefs.setBool('isOtpVerified', value);
    }
  }

  static bool? getIsOtpVerified({bool useGetStorage = true}) {
    if (useGetStorage) {
      return _box.read('isOtpVerified');
    } else {
      return _prefs.getBool('isOtpVerified');
    }
  }

  static Future<void> clearIsOtpVerified({bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.remove('isOtpVerified');
    } else {
      await _prefs.remove('isOtpVerified');
    }
  }

  // seenOnboarding
  static Future<void> saveSeenOnboarding(bool value, {bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.write('seenOnboarding', value);
    } else {
      await _prefs.setBool('seenOnboarding', value);
    }
  }

  static bool? getSeenOnboarding({bool useGetStorage = true}) {
    if (useGetStorage) {
      return _box.read('seenOnboarding');
    } else {
      return _prefs.getBool('seenOnboarding');
    }
  }

  static Future<void> clearSeenOnboarding({bool useGetStorage = true}) async {
    if (useGetStorage) {
      await _box.remove('seenOnboarding');
    } else {
      await _prefs.remove('seenOnboarding');
    }
  }

  read(String s) {}
}
