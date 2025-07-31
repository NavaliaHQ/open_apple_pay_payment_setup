import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_apple_pay_payment_setup_platform_interface.dart';

/// An implementation of [OpenApplePayPaymentSetupPlatform] that uses method channels.
class MethodChannelOpenApplePayPaymentSetup extends OpenApplePayPaymentSetupPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_apple_pay_payment_setup');

  @override
  Future<void> openPaymentSetup() => methodChannel.invokeMethod('openPaymentSetup');
}
