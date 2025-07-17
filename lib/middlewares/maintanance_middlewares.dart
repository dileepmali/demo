import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

import '../services/storage_service.dart';

class MaintenanceModeMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isMaintenance = Get.find<StorageService>().read('isMaintenance') ?? false;
    if (isMaintenance) {
      return RouteSettings(name: '/maintenance');
    }
    return null;
  }
}
