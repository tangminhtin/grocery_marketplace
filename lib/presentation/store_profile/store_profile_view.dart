import 'package:flutter/material.dart';

class StoreProfileView extends StatefulWidget {
  const StoreProfileView({super.key});

  @override
  State<StoreProfileView> createState() => _StoreProfileViewState();
}

class _StoreProfileViewState extends State<StoreProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('StoreProfileView'),
      ),
    );
  }
}
