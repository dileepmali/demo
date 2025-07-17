import 'package:demo/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/localization/localization_service.dart';
import 'app/themes/app_theme.dart';
import 'bindings/initial_binding.dart';

void main() {


  // यहां हम जरूरी सेवाएं initialize करते हैं जैसे स्टोरेज
  InitialBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Enterprise App',
        theme: appTheme,
        translations: LocalizationService(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('hi', 'IN'),
        home: LoginView(),
      );
  }
}

