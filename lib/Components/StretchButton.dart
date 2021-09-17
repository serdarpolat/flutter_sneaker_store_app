import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class StretchButton extends StatelessWidget {
  const StretchButton({
    Key? key,
    required this.s,
    required this.child,
    required this.color,
    this.onTap,
    this.elevation,
    this.width,
    this.height,
    this.borderRadius,
    this.tapColor,
  }) : super(key: key);
  final Size s;
  final Widget child;
  final Color color;
  final Function()? onTap;
  final double? elevation;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? tapColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: secondaryPadding(s)),
      child: Material(
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
        elevation: elevation ?? 0,
        color: color,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(100),
          splashColor: tapColor ?? black10,
          focusColor: tapColor ?? black10,
          child: Container(
            width: width ?? double.infinity,
            height: height ?? hh(s, 56),
            child: Center(child: child),
            decoration: BoxDecoration(
              boxShadow: [],
            ),
          ),
        ),
      ),
    );
  }
}
