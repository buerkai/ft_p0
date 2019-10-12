import 'dart:async';

import 'package:flutter/services.dart';

class FtP0 {
  static const MethodChannel _channel =
      const MethodChannel('ft_p0');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
