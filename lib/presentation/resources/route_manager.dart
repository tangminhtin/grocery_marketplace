import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/add_a_new_address/add_a_new_address_view.dart';
import 'package:grocery_marketplace/presentation/add_card/add_card_view.dart';
import 'package:grocery_marketplace/presentation/create_store/create_store_view.dart';
import 'package:grocery_marketplace/presentation/edit_store/edit_store_view.dart';
import 'package:grocery_marketplace/presentation/main/main_view.dart';
import 'package:grocery_marketplace/presentation/my_cart/my_cart_view.dart';
import 'package:grocery_marketplace/presentation/onboarding/onboarding_view.dart';
import 'package:grocery_marketplace/presentation/order_details/order_details_view.dart';
import 'package:grocery_marketplace/presentation/payment_option/payment_option_view.dart';
import 'package:grocery_marketplace/presentation/product_details/product_details_view.dart';
import 'package:grocery_marketplace/presentation/product_list/product_list_view.dart';
import 'package:grocery_marketplace/presentation/resources/string_manager.dart';
import 'package:grocery_marketplace/presentation/send_otp/send_otp_view.dart';
import 'package:grocery_marketplace/presentation/sign_in/sign_in_view.dart';
import 'package:grocery_marketplace/presentation/sign_up/sign_up_view.dart';
import 'package:grocery_marketplace/presentation/splash/splash_view.dart';
import 'package:grocery_marketplace/presentation/store_profile/store_profile_view.dart';
import 'package:grocery_marketplace/presentation/store_search/store_search.dart';
import 'package:grocery_marketplace/presentation/verification_otp/verification_otp_view.dart';
import 'package:grocery_marketplace/presentation/wishlist/wishlist_view.dart';

class Routes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String sendOTP = '/sendOTP';
  static const String verificationOTP = '/verificationOTP';
  static const String main = '/main';
  static const String productList = '/productList';
  static const String productDetails = '/productDetails';
  static const String wishlist = '/wishlist';
  static const String myCart = '/myCart';
  static const String addANewAddress = '/addANewAddress';
  static const String paymentOption = '/paymentOption';
  static const String addCard = '/addCard';
  static const String orderDetails = '/orderDetails';
  static const String createStore = '/createStore';
  static const String editStore = '/editStore';
  static const String addProduct = '/addProduct';
  static const String storeProfile = '/storeProfile';
  static const String storeSearch = '/storeSearch';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splash:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.sendOTP:
        return MaterialPageRoute(builder: (_) => const SendOTPView());
      case Routes.verificationOTP:
        return MaterialPageRoute(builder: (_) => const VerificationOTPView());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.productList:
        return MaterialPageRoute(builder: (_) => const ProductListView());
      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetailsView());
      case Routes.wishlist:
        return MaterialPageRoute(builder: (_) => const WishlistView());
      case Routes.myCart:
        return MaterialPageRoute(builder: (_) => const MyCartView());
      case Routes.addANewAddress:
        return MaterialPageRoute(builder: (_) => const AddANewAddressView());
      case Routes.paymentOption:
        return MaterialPageRoute(builder: (_) => const PaymentOptionView());
      case Routes.addCard:
        return MaterialPageRoute(builder: (_) => const AddCard());
      case Routes.orderDetails:
        return MaterialPageRoute(builder: (_) => const OrderDetailsView());
      case Routes.createStore:
        return MaterialPageRoute(builder: (_) => const CreateStore());
      case Routes.editStore:
        return MaterialPageRoute(builder: (_) => const EditStoreView());
      case Routes.storeProfile:
        return MaterialPageRoute(builder: (_) => const StoreProfileView());
      case Routes.storeSearch:
        return MaterialPageRoute(builder: (_) => const StoreSearchView());
      default:
        return unknownRoute();
    }
  }

  static Route<dynamic> unknownRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.routeNotFound),
        ),
        body: const Center(
          child: Text(StringManager.routeNotFound),
        ),
      ),
    );
  }
}
