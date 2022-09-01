import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dgis_flutter_platform_interface.dart';

/// An implementation of [DgisFlutterPlatform] that uses method channels.
class MethodChannelDgisFlutter extends DgisFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dgis_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
