// lib/config/env.staging.dart
import 'env.config.dart';

class StagingConfig implements EnvConfig {
  @override
  String get envName => 'Staging';

  @override
  String get baseUrl => 'https://staging.api.yourapp.com';

  @override
  String get imageBaseUrl => 'https://staging.images.yourapp.com';

  @override
  bool get enableLogging => true;

  @override
  String get contactEmail => 'staging-support@yourapp.com';

  @override
  Duration get apiTimeout => const Duration(seconds: 30);
}
