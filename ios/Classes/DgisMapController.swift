import MapGL

public class DgisMapController:
    NSObject,
    FlutterPlatformView
{
    public func view() -> UIView {
        return self.mapView
    }
    
    public let methodChannel: FlutterMethodChannel!
    public let pluginRegistrar: FlutterPluginRegistrar!

    private let mapView: MapView

    public required init(id: Int64, frame: CGRect, registrar: FlutterPluginRegistrar, params: [String: Any]) {
        self.pluginRegistrar = registrar
        self.mapView = MapView(frame: frame)
        self.methodChannel = FlutterMethodChannel(
            name: "fgis",
            binaryMessenger: registrar.messenger()
        )

        super.init()
        
        mapView.show(apiKey: params["map"] as! String)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result("iOS " + UIDevice.current.systemVersion)
    }
}
