
import 'open_apple_pay_payment_setup_platform_interface.dart';

class OpenApplePayPaymentSetup {
  Future<void> openPaymentSetup() => OpenApplePayPaymentSetupPlatform.instance.openPaymentSetup();
}
