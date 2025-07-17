import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class OnboardingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final hasSeen = Get.find<StorageService>().read('seenOnboarding') ?? false;
    if (!hasSeen) {
      // अगर यूजर ने ऑनबोर्डिंग नहीं देखी तो उस पेज पर भेजो
      return RouteSettings(name: '/onboarding');
    }
    return null;
  }
}
