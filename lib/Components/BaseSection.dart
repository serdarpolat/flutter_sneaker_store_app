import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({
    Key? key,
    required this.s,
    required this.header,
    required this.content,
    this.height,
  }) : super(key: key);

  final Size s;
  final String header;
  final Widget content;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? hh(s, 282),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          horizontalPadding30(
            s,
            child: Text(
              header,
              style: bold20(s, black100),
            ),
          ),
          Spacer(),
          content,
        ],
      ),
    );
  }
}
