import 'package:flutter/material.dart';

class SendOTPView extends StatefulWidget {
  const SendOTPView({super.key});

  @override
  State<SendOTPView> createState() => _SendOTPViewState();
}

class _SendOTPViewState extends State<SendOTPView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SendOTPView'),
      ),
    );
  }
}
