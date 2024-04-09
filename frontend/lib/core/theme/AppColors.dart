import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  static const black = Color.fromRGBO(0, 0, 0, 1);
  static const blackLight = Color.fromARGB(255, 20, 20, 20);
  static const blackLighter = Color(0xFF333333);

  static const artist1 = Color.fromRGBO(57, 220, 243, 1);
  // static const artist2 = Color.fromRGBO(237, 129, 255, 1);
  // static const artist3 = Color.fromRGBO(237, 129, 255, 1);

  static const listener1 = Color.fromRGBO(237, 129, 255, 1);
  static const listener2 = Color.fromRGBO(202, 87, 223, 1);
  // static const listner3 = Color.fromRGBO(57, 220, 243, 1);

  static const green = Color.fromARGB(255, 62, 185, 66);
  static const yellow = Color.fromARGB(255, 246, 205, 70);
  static const red = Color.fromARGB(255, 229, 51, 48);

  static const fontColor = Color(0xF3F3F3FF);

  static const grayAppbarGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(200, 34, 34, 34),
      Color.fromARGB(200, 34, 34, 34),
      Color.fromARGB(200, 34, 34, 34),
      Colors.transparent,
    ],
    tileMode: TileMode.decal,
  );
  static const grayBodyGradient = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Color.fromARGB(255, 34, 34, 34),
        Colors.transparent,
      ],
      stops: [
        0.85,
        1,
      ]);
}
