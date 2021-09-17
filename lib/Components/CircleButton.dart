import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.s,
    required this.color,
    this.onTap,
    required this.child,
    this.elevation,
    this.shadowColor,
  }) : super(key: key);

  final Size s;
  final Color color;
  final Function()? onTap;
  final Widget child;
  final double? elevation;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      elevation: elevation ?? 0,
      shadowColor: shadowColor ?? Colors.transparent,
      color: color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: hh(s, 44),
          height: hh(s, 44),
          child: Center(
            child: child,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: black10, width: 0.5),
          ),
        ),
      ),
    );
  }
}
