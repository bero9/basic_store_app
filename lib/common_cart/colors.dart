
import 'package:flutter/material.dart';

class TColors{
  TColors._();
  //App Basic Color
  static const Color primary = Color(0XFF4B68FF);
  static const Color secondary = Color(0XFFFFE24B);
  static const Color accent = Color(0XFFb0c7ff);
  //Text Colors
  static const Color textprimary = Color(0XFF333333);
  static const Color textsecondary = Color(0XFF6C757D);
  static const Color textwhite = Colors.white;
// BackgroundColor
  static const Color light =Colors.white;
  static const Color dark = Colors.black;
  static const Color primaryBackground = Colors.white;

//Gradiant Color
static const Gradient linerGradient = LinearGradient(
  begin: Alignment(0, 0),
    end: Alignment(0.707, -0.0707),
    colors:[
  Color(0XFFFF9A9E),
  Color(0XFFFAD0C4),
]);
}