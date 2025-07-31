import 'package:flutter/material.dart';
import 'package:open_apple_pay_payment_setup/open_apple_pay_payment_setup.dart';

void main() {
  runApp(const ApplePaySetupExampleApp());
}

class ApplePaySetupExampleApp extends StatelessWidget {
  const ApplePaySetupExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Pay Setup Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SetupScreen(),
    );
  }
}

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  Future<void> _openPaymentSetup(BuildContext context) async {
    try {
      await OpenApplePayPaymentSetup().openPaymentSetup();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Payment setup opened')));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to open payment setup: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apple Pay Setup')),
      body: Center(
        child: ElevatedButton(onPressed: () => _openPaymentSetup(context), child: const Text('Open Apple Pay Setup')),
      ),
    );
  }
}
