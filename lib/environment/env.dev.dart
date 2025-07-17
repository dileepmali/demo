// lib/config/env.dev.dart
import 'env.config.dart';

class DevConfig implements EnvConfig {
  @override
  String get envName => 'Development';

  @override
  String get baseUrl => 'https://dev.api.yourapp.com';

  @override
  String get imageBaseUrl => 'https://dev.images.yourapp.com';

  @override
  bool get enableLogging => true;

  @override
  String get contactEmail => 'dev-support@yourapp.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 30);
}
