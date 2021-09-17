import 'package:flutter/material.dart';

double ww(Size s, double size) => (s.width * size) / 375;
double hh(Size s, double size) => (s.height * size) / 812;
double primaryPadding(Size s) => ww(s, 14);
double secondaryPadding(Size s) => ww(s, 30);

Padding horizontalPadding14(Size s, {required Widget child}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: primaryPadding(s)),
      child: child,
    );

Padding horizontalPadding30(Size s, {required Widget child}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: secondaryPadding(s)),
      child: child,
    );
