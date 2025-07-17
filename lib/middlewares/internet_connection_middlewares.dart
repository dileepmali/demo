// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// class InternetConnectionMiddleware extends GetMiddleware {
//   @override
//   Future<RouteSettings?> onPageCalled(GetPage? page) async {
//     var connectivityResult = await Connectivity().checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       return RouteSettings(name: '/no-internet');
//     }
//     return null;
//   }
// }
