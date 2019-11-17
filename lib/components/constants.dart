import 'package:flutter/material.dart';

final kTitleText = TextStyle(
    color: activeColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 4);
final kSubtitleText = TextStyle(
    color: subTitleText,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 3);
final kShadowText = TextStyle(
    color: Colors.white,
    fontSize: 35,
    fontWeight: FontWeight.w900,
    letterSpacing: 4,
    shadows: [Shadow(color: Colors.black, blurRadius: 7)]);

final kTitleBarText = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'Kaushan_Script');

const spaceBetween = SizedBox(
  height: 60,
);

final fadedColor = Color(0xff575d7f);
final subTitleText = Color(0xff606687);
final actionBoxes = Color(0xff182135);
final inactiveColor = Color(0xff575d7f);
final activeColor = Color(0xffbffbb8);
