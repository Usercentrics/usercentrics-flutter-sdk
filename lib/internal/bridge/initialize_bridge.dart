import 'package:flutter/services.dart';
import 'package:usercentrics_sdk/internal/serializer/initialize_options_serializer.dart';
import 'package:usercentrics_sdk/model/logger_level.dart';

class InitializeBridge {
  static const String _name = 'initialize';

  static void invoke({
    required MethodChannel channel,
    required String settingsId,
    String? defaultLanguage,
    UsercentricsLoggerLevel? loggerLevel,
    int? timeoutMillis,
    String? version,
  }) =>
      channel.invokeMethod(
        _name,
        InitializeOptionsSerializer.serialize(
          settingsId: settingsId,
          defaultLanguage: defaultLanguage,
          loggerLevel: loggerLevel,
          timeoutMillis: timeoutMillis,
          version: version,
        ),
      );
}
