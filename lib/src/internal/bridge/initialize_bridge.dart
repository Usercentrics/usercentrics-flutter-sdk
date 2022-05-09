import 'package:flutter/services.dart';
import 'package:usercentrics_sdk/src/internal/serializer/initialize_options_serializer.dart';
import 'package:usercentrics_sdk/src/model/logger_level.dart';
import 'package:usercentrics_sdk/src/model/network_mode.dart';

abstract class InitializeBridge {
  const InitializeBridge();

  void invoke({
    required MethodChannel channel,
    required String settingsId,
    String? defaultLanguage,
    UsercentricsLoggerLevel? loggerLevel,
    int? timeoutMillis,
    String? version,
    NetworkMode? networkMode,
  });
}

class MethodChannelInitialize extends InitializeBridge {
  const MethodChannelInitialize();

  static const String _name = 'initialize';

  @override
  void invoke({
    required MethodChannel channel,
    required String settingsId,
    String? defaultLanguage,
    UsercentricsLoggerLevel? loggerLevel,
    int? timeoutMillis,
    String? version,
    NetworkMode? networkMode,
  }) {
    final arguments = InitializeOptionsSerializer.serialize(
      settingsId: settingsId,
      defaultLanguage: defaultLanguage,
      loggerLevel: loggerLevel,
      timeoutMillis: timeoutMillis,
      version: version,
      networkMode: networkMode,
    );
    channel.invokeMethod(_name, arguments);
  }
}
