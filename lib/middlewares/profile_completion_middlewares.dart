import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class ProfileCompletionMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final profile = Get.find<StorageService>().read('profile') ?? {};
    if (profile['name'] == null || profile['email'] == null) {
      return RouteSettings(name: '/complete-profile');
    }
    return null;
  }
}
