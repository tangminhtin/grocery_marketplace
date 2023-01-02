import 'package:flutter/material.dart';
import 'package:grocery_marketplace/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
    String fontFamily, double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getThinStyle({double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.thin, color);
}

TextStyle getExtraLightStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.extraLight, color);
}

TextStyle getLightStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.light, color);
}

TextStyle getRegularStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.regular, color);
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.medium, color);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.semiBold, color);
}

TextStyle getBoldStyle({double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.bold, color);
}

TextStyle getBlackStyle(
    {double fontSize = FontSize.f14, required Color color}) {
  return _getTextStyle(
      FontManager.fontFamily, fontSize, FontWeightManager.black, color);
}
