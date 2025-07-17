// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../controllers/auth_controller.dart';
// import '../controllers/auth_controller.dart';
// import 'home_view.dart';
// import 'login_view.dart';
// import 'onboarding_view.dart';
//
// class Wrapper extends StatelessWidget {
//   final AuthController _authController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       if (_authController.isLoading.value) {
//         return Center(child: CircularProgressIndicator());
//       } else {
//         if (!_authController.isLoggedIn.value) {
//           // अगर लॉगिन नहीं है तो लॉगिन स्क्रीन
//           return LoginView();
//         } else if (!_authController.hasSeenOnboarding.value) {
//           // अगर ऑनबोर्डिंग नहीं देखा तो ऑनबोर्डिंग दिखाओ
//           return OnboardingView();
//         } else {
//           // वरना होम स्क्रीन
//           return HomeView();
//         }
//       }
//     });
//   }
// }
