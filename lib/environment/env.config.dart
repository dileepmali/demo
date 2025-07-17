// lib/config/env_config.dart
abstract class EnvConfig {

  String get envName;
  String get baseUrl;
  String get imageBaseUrl;
  bool get enableLogging;
  String get contactEmail;
  Duration get apiTimeout;

}
