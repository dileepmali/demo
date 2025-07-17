import 'package:get/get_navigation/src/routes/get_route.dart';

import '../bindings/login_bilding.dart';
import '../views/login.dart';
import 'app_routes.dart';

final pages = [
  GetPage(
    name: AppRoutes.login,
    page: () => LoginView(),
    binding: LoginBinding(),
  ),
  // GetPage(
  //   name: AppRoutes.home,
  //   page: () => HomeView(),
  //   binding: HomeBinding(),
  // ),
];
