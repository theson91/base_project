import 'package:flutter/services.dart';
import '../constants/app_constants.dart';
import '../utils/logger.dart';

typedef NativeCallback = void Function(Map<String, dynamic> data);

class NativeBridge {
  static const MethodChannel channel = MethodChannel(AppConstants.methodChannelName);
  
  static NativeCallback? onEventReceived;

  /// Send data to native (as Map)
  static Future<void> notifyNative(Map<String, dynamic> data) async {
    try {
      await channel.invokeMethod('notifyNative', data);
    } on PlatformException catch (e) {
      Logger.log('Failed to send data to native: $e');
    }
  }

  /// Register callback to receive data from native
  static void setNativeListener(NativeCallback callback) {
    onEventReceived = callback;

    channel.setMethodCallHandler((call) async {
      if (call.method == 'onNativeNotify') {
        final Map<String, dynamic> data = Map<String, dynamic>.from(call.arguments);
        onEventReceived?.call(data);
      }
    });
  }
}
