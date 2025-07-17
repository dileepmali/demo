// lib/config/env.prod.dart
import 'env.config.dart';

class ProdConfig implements EnvConfig {
  @override
  String get envName => 'Production';

  @override
  String get baseUrl => 'https://api.yourapp.com';

  @override
  String get imageBaseUrl => 'https://images.yourapp.com';

  @override
  bool get enableLogging => false;

  @override
  String get contactEmail => 'support@yourapp.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 30);
}
