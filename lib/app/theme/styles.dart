import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00BB5D);
const baseColor = const Color(0xFF757575);
const secundaryColor = const Color(0xFF9F9F9F);
const darkColor = const Color(0xFF263D4C);
const bgColor = const Color(0xFFFfffff);
const lighColor = const Color(0xFFFfffff);
const appBarColor = const Color(0xFFF0F0F0);
const greenbg = const Color(0xFFE5F4E9);
const purplebg = const Color(0xFFA359FF);
const purpleligh = const Color(0xFFEEE1FF);
const graycolor = const Color(0xFFEEEEEE);
const linecolor = const Color(0xFFD3D3D3);


ThemeData defaultTheme() {
  return ThemeData(
    brightness: brightness,
    backgroundColor: bgColor,
  );
}