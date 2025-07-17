import 'package:get/get.dart';

import '../repositories/auth_repositories.dart';

class AuthController extends GetxController {
  final AuthRepository _repo;
  var isLoading = false.obs;

  AuthController(this._repo);

  Future<void> login(String email, String password) async {
    try {
      isLoading.value = true;
      final user = await _repo.login(email, password);
      print('Login Success: ${user.name}');
    } catch (e) {
      Get.snackbar('Error', 'Login failed');
    } finally {
      isLoading.value = false;
    }
  }
}
