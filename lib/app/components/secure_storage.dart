import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class AppSecureStorage {
  static const String key = "token";
  static final _storage = FlutterSecureStorage();

  static Future<String?> getToken() async {
    if (await checkToken()) {
      final String? token = await _storage.read(key: key);
      return token;
    } else {
      assert(true);
    }
  }

  static Future<void> putToken(String token) async {
    await _storage.write(key: key, value: token);
  }

  static Future<bool> checkToken() async {
    return await _storage.containsKey(key: key);
  }

  static Future<void> deleteToken() async {
    await _storage.deleteAll();
  }
}
