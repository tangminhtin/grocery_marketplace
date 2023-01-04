import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/resources/color_manager.dart';
import 'package:grocery_marketplace/presentation/resources/font_manager.dart';
import 'package:grocery_marketplace/presentation/resources/size_manager.dart';
import 'package:grocery_marketplace/presentation/resources/style_manager.dart';

ThemeData getTheme() {
  return ThemeData(
    // Main colors of the app
    primaryColor: ColorManager.illuminatingEmerald,
    primaryColorLight: ColorManager.illuminatingEmeraldOpacity60,
    disabledColor: ColorManager.darkLiver,

    // Card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: SizeManager.s5,
      shadowColor: ColorManager.blackOpacity5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeManager.s10),
      ),
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.illuminatingEmerald,
      elevation: SizeManager.s5,
      iconTheme: IconThemeData(
        color: ColorManager.white,
        size: SizeManager.s20,
      ),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.illuminatingEmerald,
      disabledColor: ColorManager.darkLiver,
      splashColor: ColorManager.illuminatingEmeraldOpacity60,
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.illuminatingEmerald,
        foregroundColor: ColorManager.white,
        alignment: Alignment.center,
        elevation: SizeManager.s5,
        disabledBackgroundColor: ColorManager.illuminatingEmeraldOpacity40,
        shape: const StadiumBorder(),
        fixedSize: const Size(150, 48),
      ),
    ),

    // Outline button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorManager.illuminatingEmerald,
        alignment: Alignment.center,
        elevation: SizeManager.s5,
        shape: const StadiumBorder(),
        side: BorderSide(color: ColorManager.illuminatingEmerald),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      displayLarge: getRegularStyle(
          color: ColorManager.illuminatingEmerald, fontSize: FontSize.f20),
      displayMedium:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.f16),
      displaySmall: getRegularStyle(color: ColorManager.black),
      headlineLarge: getRegularStyle(
          color: ColorManager.darkLiver, fontSize: FontSize.f18),
      headlineMedium: getMediumStyle(
          color: ColorManager.illuminatingEmerald, fontSize: FontSize.f16),
      headlineSmall: getRegularStyle(color: ColorManager.black),
      titleLarge:
          getMediumStyle(color: ColorManager.white, fontSize: FontSize.f24),
      titleMedium:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.f18),
      titleSmall: getRegularStyle(
          color: ColorManager.darkLiverOpacity50, fontSize: FontSize.f14),
      bodyLarge: getRegularStyle(color: ColorManager.black),
      bodyMedium: getRegularStyle(
          color: ColorManager.darkLiverOpacity70, fontSize: FontSize.f14),
      bodySmall: getRegularStyle(color: ColorManager.black),
      labelLarge:
          getSemiBoldStyle(color: ColorManager.white, fontSize: FontSize.f18),
      labelMedium:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.f18),
      labelSmall: getRegularStyle(color: ColorManager.black),
    ),

    // Input decoration
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(SizeManager.s15),
      hintStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.f18),
      labelStyle: getRegularStyle(
          color: ColorManager.darkLiver, fontSize: FontSize.f18),
      errorStyle: getRegularStyle(color: ColorManager.begonia),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeManager.s25),
        borderSide: BorderSide(color: ColorManager.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeManager.s25),
        borderSide: BorderSide(color: ColorManager.white),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeManager.s25),
        borderSide: BorderSide(color: ColorManager.darkLiver),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeManager.s25),
        borderSide: BorderSide(color: ColorManager.begonia),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeManager.s25),
        borderSide: BorderSide(color: ColorManager.illuminatingEmerald),
      ),
    ),
  );
}
