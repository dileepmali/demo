// lib/config/env.dart
import 'env.config.dart';
import 'env.pord.dart';
import 'env.dev.dart';
import 'env.staging.dart';

class Env {
  static late EnvConfig config;

  static void setEnvironment(String env) {
    switch (env) {
      case 'dev':
        config = DevConfig();
        break;
      case 'staging':
        config = StagingConfig();
        break;
      case 'prod':
      default:
        config = ProdConfig();
        break;
    }
  }
}
