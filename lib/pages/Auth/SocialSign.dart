import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

class SocialSign extends StatelessWidget {
  const SocialSign({
    Key? key,
    required this.s,
    required this.icon,
  }) : super(key: key);

  final Size s;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      s: s,
      elevation: 1,
      shadowColor: black30,
      color: white100,
      child: SvgPicture.asset(icon),
      onTap: () {},
    );
  }
}
