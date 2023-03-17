import 'package:flutter_test/flutter_test.dart';
import 'package:acdc/acdc.dart';
import 'package:acdc/acdc_platform_interface.dart';
import 'package:acdc/acdc_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAcdcPlatform
    with MockPlatformInterfaceMixin
    implements AcdcPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AcdcPlatform initialPlatform = AcdcPlatform.instance;

  test('$MethodChannelAcdc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAcdc>());
  });

  test('getPlatformVersion', () async {
    Acdc acdcPlugin = Acdc();
    MockAcdcPlatform fakePlatform = MockAcdcPlatform();
    AcdcPlatform.instance = fakePlatform;

    expect(await acdcPlugin.getPlatformVersion(), '42');
  });
}
