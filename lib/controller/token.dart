import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TokenStorage {
  static final box = GetStorage();

  static Future<void> savetoken(String token) async {
    await box.write('token', token);
  }

  static String getToken() {
    return box.read('token') ?? '';
  }

  static deletToken() {
    box.remove('token');
    Get.toNamed('/locale');
  }
}
