import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_marketplace/presentation/resources/asset_manager.dart';
import 'package:grocery_marketplace/presentation/resources/color_manager.dart';
import 'package:grocery_marketplace/presentation/resources/route_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  void _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  void _goNext() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.onboarding, (route) => false);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.illuminatingEmerald,
      body: Center(
        child: SvgPicture.asset(ImageManager.splash),
      ),
    );
  }
}
