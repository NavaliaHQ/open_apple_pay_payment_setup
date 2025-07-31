import Flutter
import UIKit
import PassKit

public class OpenApplePayPaymentSetupPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "open_apple_pay_payment_setup", binaryMessenger: registrar.messenger())
    let instance = OpenApplePayPaymentSetupPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "openPaymentSetup":
        openPaymentSetup()
        result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  func openPaymentSetup() {
    PKPassLibrary().openPaymentSetup()
  }
}
