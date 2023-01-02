import 'package:flutter/material.dart';

class AddANewAddressView extends StatefulWidget {
  const AddANewAddressView({super.key});

  @override
  State<AddANewAddressView> createState() => _AddANewAddressViewState();
}

class _AddANewAddressViewState extends State<AddANewAddressView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AddANewAddressView'),
      ),
    );
  }
}
