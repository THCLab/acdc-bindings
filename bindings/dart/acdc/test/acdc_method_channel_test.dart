import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:acdc/acdc_method_channel.dart';

void main() {
  MethodChannelAcdc platform = MethodChannelAcdc();
  const MethodChannel channel = MethodChannel('acdc');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
