import 'package:flutter/material.dart';

class PaymentOptionView extends StatefulWidget {
  const PaymentOptionView({super.key});

  @override
  State<PaymentOptionView> createState() => _PaymentOptionViewState();
}

class _PaymentOptionViewState extends State<PaymentOptionView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('PaymentOptionView'),
      ),
    );
  }
}
