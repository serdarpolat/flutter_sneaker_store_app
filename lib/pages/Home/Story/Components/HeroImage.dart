import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/CircleButton.dart';
import 'package:x_store/Source/source_shelf.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(s, 375),
      height: hh(s, 375),
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: ww(s, 30), top: hh(s, 54)),
        child: CircleButton(
          s: s,
          onTap: () => back(context),
          color: white30,
          child: SvgPicture.asset(
            "assets/icons/chevronLeft.svg",
            width: hh(s, 24),
            height: hh(s, 24),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: red,
        image: DecorationImage(
          image: AssetImage("assets/images/p7.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
