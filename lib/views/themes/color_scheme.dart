import 'package:flutter/material.dart';

Map<int, Color> brand = {
  900: const Color(0xff3E2723),
  800: const Color(0xff4E342E),
  700: const Color(0xff5D4037),
  600: const Color(0xff6D4C41),
  500: const Color(0xff795548),
  400: const Color(0xff8D6E63),
  300: const Color(0xffA1887F),
  200: const Color(0xffBCAAA4),
  100: const Color(0xffD7CCC8),
};

Map<int, Color> secondary = {
  900: const Color(0xff1A2C32),
  800: const Color(0xff2A4149),
  700: const Color(0xff37545D),
  600: const Color(0xff456872),
  500: const Color(0xff507783),
  400: const Color(0xff6A8A95),
  300: const Color(0xff839FA8),
  200: const Color(0xffA6BBC1),
  100: const Color(0xffC7D6DB),
  50: const Color(0xffE6EFF3),
};

Map<String, Color> semantic = {
  'success': const Color(0xff43936C),
  'info': const Color(0xff03539E),
  'danger': const Color(0xffE33131),
  'warning': const Color(0xffEB9525),
};

Map<String, Color> neutral = {
  'light': const Color(0xffFEFEFE),
  'medium': const Color(0xffF0F0F0),
  'dark': const Color(0xff3C3C3C),
};

Map<String, Color> textColor = {
  'heading': const Color(0xff3C3C3C),
  'paragraph': const Color(0xff555555),
  'nonactive': const Color(0xff868686),
  'disabled': const Color(0xffCACACA),
};
Color? primaryBrandColor = brand[700];

TextStyle headingText1 = const TextStyle(
  fontSize: 24,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
