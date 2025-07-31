import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_apple_pay_payment_setup_method_channel.dart';

abstract class OpenApplePayPaymentSetupPlatform extends PlatformInterface {
  /// Constructs a OpenApplePayPaymentSetupPlatform.
  OpenApplePayPaymentSetupPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenApplePayPaymentSetupPlatform _instance = MethodChannelOpenApplePayPaymentSetup();

  /// The default instance of [OpenApplePayPaymentSetupPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenApplePayPaymentSetup].
  static OpenApplePayPaymentSetupPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenApplePayPaymentSetupPlatform] when
  /// they register themselves.
  static set instance(OpenApplePayPaymentSetupPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> openPaymentSetup() {
    throw UnimplementedError('openPaymentSetup() has not been implemented.');
  }
}
