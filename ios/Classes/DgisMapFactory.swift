import Flutter
import UIKit
import CoreLocation
import MapGL

public class DgisMapFactory: NSObject, FlutterPlatformViewFactory {
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return DgisMapController(
            id: viewId,
            frame: frame,
            registrar: self.pluginRegistrar,
            params: args as! [String: Any]
        )
    }
    
  private let pluginRegistrar: FlutterPluginRegistrar!

  public init(registrar: FlutterPluginRegistrar) {
    self.pluginRegistrar = registrar
    super.init()
  }

  public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}
