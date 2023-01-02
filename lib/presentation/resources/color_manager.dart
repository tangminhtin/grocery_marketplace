import 'package:flutter/material.dart';

class ColorManager {
  static Color illuminatingEmerald = HexColor.fromHex('#33907C');
  static Color illuminatingEmeraldOpacity60 = HexColor.fromHex('#9933907C');
  static Color illuminatingEmeraldOpacity40 = HexColor.fromHex('#6033907C');
  static Color illuminatingEmeraldOpacity10 = HexColor.fromHex('#1A33907C');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color whiteOpacity80 = HexColor.fromHex('#CCFFFFFF');
  static Color whiteOpacity40 = HexColor.fromHex('#66FFFFFF');
  static Color black = HexColor.fromHex('#000000');
  static Color blackOpacity20 = HexColor.fromHex('#33000000');
  static Color blackOpacity5 = HexColor.fromHex('#0D000000');
  static Color onyx = HexColor.fromHex('#333A42');
  static Color mughalGreen = HexColor.fromHex('#36611C');
  static Color greenCrayola = HexColor.fromHex('#13B58C');
  static Color turquoise = HexColor.fromHex('#2BDBC0');
  static Color begonia = HexColor.fromHex('#FF7272');
  static Color darkLiver = HexColor.fromHex('#4F4F4F');
  static Color darkLiverOpacity70 = HexColor.fromHex('#B34F4F4F');
  static Color darkLiverOpacity50 = HexColor.fromHex('#804F4F4F');
  static Color darkLiverOpacity40 = HexColor.fromHex('#604F4F4F');
  static Color brightGray = HexColor.fromHex('#ECEBED');
  static Color lightGray = HexColor.fromHex('#CED2D9');
  static Color quartz = HexColor.fromHex('#4A4A4A');
  static Color gainsboro = HexColor.fromHex('#DBDBDE');
  static Color blueberry = HexColor.fromHex('#4EA0FF');
  static Color beauBlue = HexColor.fromHex('#B6CFEE');
  static Color jet = HexColor.fromHex('#3A2C3C');
  static Color darkElectricBlue = HexColor.fromHex('#606A7B');
  static Color darkElectricBlueOpacity50 = HexColor.fromHex('#80606A7B');
  static Color raisinBlack = HexColor.fromHex('#212121');
  static Color lightSilver = HexColor.fromHex('#D8D8D8');
  static Color ghostWhite = HexColor.fromHex('#F6F9FF');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceFirst('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
