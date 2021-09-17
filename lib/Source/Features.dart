import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:x_store/Source/Metrics.dart';

TextStyle bold11(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 11),
      fontWeight: FontWeight.bold,
      height: 1.5,
    );

TextStyle bold12(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 12),
      fontWeight: FontWeight.bold,
      height: 1.5,
    );

TextStyle bold14(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 14),
      fontWeight: FontWeight.bold,
      height: 1.45,
    );

TextStyle bold16(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 16),
      fontWeight: FontWeight.bold,
      height: 1.5,
    );

TextStyle bold20(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 20),
      fontWeight: FontWeight.bold,
      height: 1.4,
    );

TextStyle bold24(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 24),
      fontWeight: FontWeight.bold,
      height: 1.333,
    );

TextStyle bold28(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 28),
      fontWeight: FontWeight.bold,
      height: 1.143,
    );

TextStyle regular11(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 11),
      height: 1.5,
    );

TextStyle regular12(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 12),
      height: 1.5,
    );

TextStyle regular14(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 14),
      height: 1.5,
    );

TextStyle regular16(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 16),
      height: 1.5,
    );

TextStyle regular20(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 20),
      height: 1.4,
    );

TextStyle regular24(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 24),
      height: 1.333,
    );

TextStyle regular28(Size s, Color color) => TextStyle(
      color: color,
      fontSize: hh(s, 28),
      height: 1.143,
    );

Future<dynamic> goPush(BuildContext context, Widget child) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => child));

void back(BuildContext context) => Navigator.of(context).pop();
