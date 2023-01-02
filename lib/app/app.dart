import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/resources/route_manager.dart';
import 'package:grocery_marketplace/presentation/resources/theme_manager.dart';

class GroceryApp extends StatefulWidget {
  const GroceryApp._internal(); // Private name constructor

  static const GroceryApp instance = GroceryApp._internal(); // Singleton

  factory GroceryApp() => instance; // Factory for the class instance

  @override
  State<GroceryApp> createState() => _GroceryAppState();
}

class _GroceryAppState extends State<GroceryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.getRoute,
      theme: getTheme(),
    );
  }
}
