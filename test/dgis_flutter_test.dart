import 'package:flutter_test/flutter_test.dart';
import 'package:dgis_flutter/dgis_flutter.dart';
import 'package:dgis_flutter/dgis_flutter_platform_interface.dart';
import 'package:dgis_flutter/dgis_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDgisFlutterPlatform 
    with MockPlatformInterfaceMixin
    implements DgisFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DgisFlutterPlatform initialPlatform = DgisFlutterPlatform.instance;

  test('$MethodChannelDgisFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDgisFlutter>());
  });

  test('getPlatformVersion', () async {
    DgisFlutter dgisFlutterPlugin = DgisFlutter();
    MockDgisFlutterPlatform fakePlatform = MockDgisFlutterPlatform();
    DgisFlutterPlatform.instance = fakePlatform;
  
    expect(await dgisFlutterPlugin.getPlatformVersion(), '42');
  });
}
