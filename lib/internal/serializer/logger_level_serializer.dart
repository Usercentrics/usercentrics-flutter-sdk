/// {@nodoc}
library logger_level_serializer;

import 'package:usercentrics_sdk/model/logger_level.dart';

class LoggerLevelSerializer {
  static dynamic serialize(UsercentricsLoggerLevel? value) {
    if (value == null) return null;
    switch (value) {
      case UsercentricsLoggerLevel.none:
        return 'NONE';
      case UsercentricsLoggerLevel.error:
        return 'ERROR';
      case UsercentricsLoggerLevel.warning:
        return 'WARNING';
      case UsercentricsLoggerLevel.debug:
        return 'DEBUG';
    }
  }
}
