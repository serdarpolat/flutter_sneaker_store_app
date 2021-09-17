import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Source/source_shelf.dart';

class InfoHeader extends StatelessWidget {
  const InfoHeader({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Size All",
          style: bold16(s, black100),
        ),
        SvgPicture.asset(
          "assets/icons/chevronDown.svg",
          width: ww(s, 24),
        )
      ],
    );
  }
}
