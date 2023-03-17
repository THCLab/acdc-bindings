import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'acdc_method_channel.dart';

abstract class AcdcPlatform extends PlatformInterface {
  /// Constructs a AcdcPlatform.
  AcdcPlatform() : super(token: _token);

  static final Object _token = Object();

  static AcdcPlatform _instance = MethodChannelAcdc();

  /// The default instance of [AcdcPlatform] to use.
  ///
  /// Defaults to [MethodChannelAcdc].
  static AcdcPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AcdcPlatform] when
  /// they register themselves.
  static set instance(AcdcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
