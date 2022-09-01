import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dgis_flutter_method_channel.dart';

abstract class DgisFlutterPlatform extends PlatformInterface {
  /// Constructs a DgisFlutterPlatform.
  DgisFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static DgisFlutterPlatform _instance = MethodChannelDgisFlutter();

  /// The default instance of [DgisFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelDgisFlutter].
  static DgisFlutterPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DgisFlutterPlatform] when
  /// they register themselves.
  static set instance(DgisFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
