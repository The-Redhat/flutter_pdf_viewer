import Flutter
import UIKit

public class SwiftPdfViewerPlugin: NSObject, FlutterPlugin {
    var host: UIViewController?, channel: FlutterMethodChannel, registrar: FlutterPluginRegistrar
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_pdf_viewer", binaryMessenger: registrar.messenger())
        let host: UIViewController? = UIApplication.shared.delegate?.window??.rootViewController
        let instance = SwiftPdfViewerPlugin(host: host, channel: channel, registrar: registrar)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    init(host: UIViewController?, channel: FlutterMethodChannel, registrar: FlutterPluginRegistrar) {
        self.host = host
        self.channel = channel
        self.registrar = registrar
        super.init()
    }
}
