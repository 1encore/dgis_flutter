import Flutter
import UIKit

public class SwiftDgisFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    // let channel = FlutterMethodChannel(
    //   name: "fgis", 
    //   binaryMessenger: registrar.messenger()
    // )
    // let instance = SwiftDgisFlutterPlugin()
    // registrar.addMethodCallDelegate(instance, channel: channel)
    registrar.register(
      DgisMapFactory(registrar: registrar),
      withId: "<gis-view>"
    )
  }
}
