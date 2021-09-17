import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Source/source_shelf.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      height: hh(s, 44),
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: hh(s, 10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: regular20(s, black100),
          ),
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}
