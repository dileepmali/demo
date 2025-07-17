import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../app/constants/app_string.dart';
import '../controllers/auth_controller.dart';
import '../repositories/auth_repositories.dart';
import '../services/auth_service.dart';

class LoginView extends StatelessWidget {
  // Controller को initialize कर रहे हैं
  final controller = Get.put(AuthController(AuthRepository(AuthService())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(AppStrings.loginTitle, style: TextStyle(fontSize: 24)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await controller.login('test@mail.com', '123456');

                    // लॉगिन के बाद स्टोरेज में डेटा सेव करना
                    final storage = Get.find<GetStorage>();
                    storage.write('token', 'dummy_token');
                    storage.write('role', 'user');
                    storage.write('isOtpVerified', true);
                    storage.write('seenOnboarding', true);

                    // होम स्क्रीन पर जाना
                    Get.offAllNamed('/home');
                  },
                  child: Text('Login'),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
