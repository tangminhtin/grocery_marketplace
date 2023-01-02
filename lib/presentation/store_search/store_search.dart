import 'package:flutter/material.dart';

class StoreSearchView extends StatefulWidget {
  const StoreSearchView({super.key});

  @override
  State<StoreSearchView> createState() => _StoreSearchViewState();
}

class _StoreSearchViewState extends State<StoreSearchView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('StoreSearchView'),
      ),
    );
  }
}
