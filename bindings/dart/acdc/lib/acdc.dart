
import 'acdc_platform_interface.dart';

class Acdc {
  Future<String?> getPlatformVersion() {
    return AcdcPlatform.instance.getPlatformVersion();
  }
}
