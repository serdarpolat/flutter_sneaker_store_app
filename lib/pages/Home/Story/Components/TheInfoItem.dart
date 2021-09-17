import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class TheInfoItem extends StatelessWidget {
  const TheInfoItem({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bold16(s, black100),
        ),
        SizedBox(height: hh(s, 8)),
        Text(
          subTitle,
          style: regular14(s, black60),
        ),
      ],
    );
  }
}
