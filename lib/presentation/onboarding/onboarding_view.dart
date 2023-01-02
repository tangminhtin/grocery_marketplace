import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_marketplace/presentation/onboarding/onboarding_view_model.dart';
import 'package:grocery_marketplace/presentation/resources/color_manager.dart';
import 'package:grocery_marketplace/presentation/resources/route_manager.dart';
import 'package:grocery_marketplace/presentation/resources/size_manager.dart';
import 'package:grocery_marketplace/presentation/resources/string_manager.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final OnboardingViewModel _onboardingViewModel = OnboardingViewModel();

  final PageController _pageController = PageController();

  void _bind() {
    _onboardingViewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _onboardingViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<SliderViewObject>(
      stream: _onboardingViewModel.outputSliderViewObject,
      builder: (context, snapshot) => _getContentWidget(size, snapshot.data),
    );
  }

  Widget _getContentWidget(Size size, SliderViewObject? sliderViewObject) {
    if (sliderViewObject == null) {
      return Container();
    }

    return Scaffold(
      backgroundColor: ColorManager.illuminatingEmerald,
      body: Stack(
        alignment: Alignment.center,
        children: [
          _getBackground(size),
          _getSlider(size, sliderViewObject),
          _getIndicator(
              sliderViewObject.numberOfSlider, sliderViewObject.currentIndex),
          _getNext(size, sliderViewObject.numberOfSlider,
              sliderViewObject.currentIndex),
        ],
      ),
    );
  }

  Widget _getBackground(Size size) {
    return Column(
      children: [
        SizedBox(
          height: size.height / 2,
          width: size.width,
        ),
        Container(
          height: size.height / 2,
          width: size.width,
          color: ColorManager.white,
        ),
      ],
    );
  }

  Widget _getSlider(Size size, SliderViewObject sliderViewObject) {
    return Positioned(
      bottom: SizeManager.s100,
      width: size.width * 0.8,
      height: size.height * 0.6,
      child: PageView.builder(
        itemCount: sliderViewObject.numberOfSlider,
        controller: _pageController,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: SizeManager.s334,
              width: SizeManager.s307,
              padding: const EdgeInsets.all(SizeManager.s10),
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(SizeManager.s10),
              ),
              child: SvgPicture.asset(
                sliderViewObject.slider.image,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(height: SizeManager.s70),
            Text(
              sliderViewObject.slider.title,
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: SizeManager.s70),
          ],
        ),
        onPageChanged: (index) => _onboardingViewModel.onPageChanged(index),
      ),
    );
  }

  Widget _getIndicator(int numberOfSlider, int currentIndex) {
    return Positioned(
      bottom: SizeManager.s100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < numberOfSlider; i++)
            Padding(
              padding: const EdgeInsets.all(SizeManager.s5),
              child: CircleAvatar(
                radius: SizeManager.s10,
                backgroundColor: i == currentIndex
                    ? ColorManager.illuminatingEmerald
                    : ColorManager.illuminatingEmeraldOpacity60,
              ),
            ),
        ],
      ),
    );
  }

  Widget _getNext(Size size, int numberOfSlider, int currentIndex) {
    return Positioned(
      bottom: SizeManager.s20,
      width: size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          if (numberOfSlider == currentIndex + 1) {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.main, (route) => false);
          } else {
            _pageController.animateToPage(
              _onboardingViewModel.next(),
              duration: const Duration(microseconds: 300),
              curve: Curves.bounceIn,
            );
          }
        },
        child: const Text(StringManager.next),
      ),
    );
  }
}
