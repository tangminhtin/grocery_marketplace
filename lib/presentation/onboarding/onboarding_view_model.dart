import 'dart:async';

import 'package:grocery_marketplace/domain/model/model.dart';
import 'package:grocery_marketplace/presentation/base/base_view_model.dart';
import 'package:grocery_marketplace/presentation/resources/asset_manager.dart';
import 'package:grocery_marketplace/presentation/resources/string_manager.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {
  final StreamController _sliderStreamController =
      StreamController<SliderViewObject>();

  final _sliders = [
    SliderModel(ImageManager.onboarding1, StringManager.onboardingTitle1),
    SliderModel(ImageManager.onboarding2, StringManager.onboardingTitle2),
    SliderModel(ImageManager.onboarding3, StringManager.onboardingTitle3),
  ];
  int _currentIndex = 0;

  @override
  void start() {
    _postDataToView();
  }

  @override
  void dispose() {
    _sliderStreamController.close();
  }

  @override
  int next() {
    _currentIndex++;
    _postDataToView();

    return _currentIndex;
  }

  @override
  int previous() {
    _currentIndex--;
    _postDataToView();

    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _sliderStreamController.sink;

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _sliderStreamController.stream.map((slider) => slider);

  void _postDataToView() {
    inputSliderViewObject.add(
      SliderViewObject(_sliders[_currentIndex], _sliders.length, _currentIndex),
    );
  }
}

abstract class OnboardingViewModelInputs {
  int next();
  int previous();
  void onPageChanged(int index);

  Sink get inputSliderViewObject;
}

abstract class OnboardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderModel slider;
  int numberOfSlider;
  int currentIndex;

  SliderViewObject(this.slider, this.numberOfSlider, this.currentIndex);
}
