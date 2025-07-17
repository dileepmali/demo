import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  void login(String email, String password) {
    isLoading.value = true;
    // call repo → service → api
  }
}
