import 'package:flutter/material.dart';

class VerificationOTPView extends StatefulWidget {
  const VerificationOTPView({super.key});

  @override
  State<VerificationOTPView> createState() => _VerificationOTPViewState();
}

class _VerificationOTPViewState extends State<VerificationOTPView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('VerificationOTPView'),
      ),
    );
  }
}
