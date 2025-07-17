import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class RoleMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final role = Get.find<StorageService>().read('role');
    if (role == 'admin' && route != '/admin-dashboard') {
      return RouteSettings(name: '/admin-dashboard');
    } else if (role == 'user') {
      return null; // यूजर सामान्य पेज देख सकता है
    }
    return RouteSettings(name: '/login');
  }
}
