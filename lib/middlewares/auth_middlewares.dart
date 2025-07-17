import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final token = Get.find<StorageService>().read('token');
    if (token == null) {
      // अगर token नहीं है मतलब यूजर लॉगिन नहीं है, तो लॉगिन पेज पर भेजो
      return RouteSettings(name: '/login');
    }
    return null; // सब ठीक है, आगे जाने दो
  }
}
