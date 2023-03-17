import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'acdc_platform_interface.dart';

/// An implementation of [AcdcPlatform] that uses method channels.
class MethodChannelAcdc extends AcdcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('acdc');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
