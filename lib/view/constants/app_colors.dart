import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Color(0xff3F3F3F);
  static const Color white = Color(0xffF8F8F8);
  static const Color blue = Color(0xff7392FF);
  static const Color green = Color(0xff5FB25D);
  static const LinearGradient gradient = LinearGradient(
    colors: [
      blue,
      green,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
