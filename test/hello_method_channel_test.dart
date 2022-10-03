import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello/hello_method_channel.dart';

void main() {
  MethodChannelHello platform = MethodChannelHello();
  const MethodChannel channel = MethodChannel('hello');

  TestWidgetsFlutterBinding.ensureInitialized();

  /*setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });*/

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Realme X7 Max';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getDeviceName', () async {
    expect(await platform.getDeviceName(), 'Realme X7 Max');
  });
}
