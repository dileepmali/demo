import 'package:flutter/foundation.dart';

enum LogLevel { info, warning, error }

class Logger {
  static void log(String message, {LogLevel level = LogLevel.info}) {
    if (!kDebugMode) return;

    final prefix = {
      LogLevel.info: '[INFO]',
      LogLevel.warning: '[WARNING]',
      LogLevel.error: '[ERROR]',
    }[level];

    print('$prefix $message');
  }
}
