import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

class UpdateCheckerMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final currentVersion = "1.0.0";
    final latestVersion = "1.2.0";
    if (currentVersion != latestVersion) {
      return RouteSettings(name: '/update');
    }
    return null;
  }
}
