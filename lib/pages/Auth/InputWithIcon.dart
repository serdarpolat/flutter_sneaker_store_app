import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class InputWithIcon extends StatelessWidget {
  const InputWithIcon({
    Key? key,
    required this.s,
    required this.icon,
    required this.hint,
    this.secured,
  }) : super(key: key);

  final Size s;
  final IconData icon;
  final String hint;
  final bool? secured;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(s, 56),
      child: TextField(
        style: regular16(s, black100),
        obscureText: secured ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18.5),
          prefixIcon: Icon(
            icon,
            color: black100,
          ),
          hintText: hint,
          hintStyle: regular16(s, black30),
        ),
      ),
    );
  }
}
