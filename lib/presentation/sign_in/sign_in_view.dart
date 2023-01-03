import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/resources/color_manager.dart';
import 'package:grocery_marketplace/presentation/resources/route_manager.dart';
import 'package:grocery_marketplace/presentation/resources/size_manager.dart';
import 'package:grocery_marketplace/presentation/resources/string_manager.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  void _goSignUp() {
    Navigator.of(context).pushNamed(Routes.signUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.illuminatingEmerald,
      body: Padding(
        padding: const EdgeInsets.all(SizeManager.s25),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringManager.welcome,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: SizeManager.s50),
              Text(
                StringManager.signInToYourAccount,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: SizeManager.s50),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: StringManager.emailOrMobileNumber,
                ),
              ),
              const SizedBox(height: SizeManager.s15),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: StringManager.password,
                ),
              ),
              const SizedBox(height: SizeManager.s50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.white,
                  ),
                  child: Text(
                    StringManager.signIn,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              const SizedBox(height: SizeManager.s50),
              Text(
                StringManager.forgotYourPassword,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: SizeManager.s40),
              GestureDetector(
                onTap: _goSignUp,
                child: Text(
                  StringManager.doNtHaveAnAccount,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
