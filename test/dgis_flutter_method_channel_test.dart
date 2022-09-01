import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dgis_flutter/dgis_flutter_method_channel.dart';

void main() {
  MethodChannelDgisFlutter platform = MethodChannelDgisFlutter();
  const MethodChannel channel = MethodChannel('dgis_flutter');

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
