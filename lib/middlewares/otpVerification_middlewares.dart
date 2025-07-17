import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class OTPVerificationMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isVerified = Get.find<StorageService>().read('isOtpVerified') ?? false;
    if (!isVerified) {
      return RouteSettings(name: '/otp-verification');
    }
    return null;
  }
}
