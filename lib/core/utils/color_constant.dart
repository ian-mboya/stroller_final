import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green200 = fromHex('#acd0a6');

  static Color purpleA400Ed = fromHex('#edd520f3');

  static Color blue500 = fromHex('#2196f3');

  static Color lime800 = fromHex('#b37a45');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color red300 = fromHex('#be9774');

  static Color gray101 = fromHex('#f6f6f6');

  static Color black9003f = fromHex('#3f000000');

  static Color green500 = fromHex('#54a646');

  static Color gray50 = fromHex('#f8f8f8');

  static Color gray100 = fromHex('#faf5f5');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color purpleA400 = fromHex('#d520f3');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
