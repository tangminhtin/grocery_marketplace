import 'package:flutter/material.dart';

class EditStoreView extends StatefulWidget {
  const EditStoreView({super.key});

  @override
  State<EditStoreView> createState() => _EditStoreViewState();
}

class _EditStoreViewState extends State<EditStoreView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('EditStoreView'),
      ),
    );
  }
}
