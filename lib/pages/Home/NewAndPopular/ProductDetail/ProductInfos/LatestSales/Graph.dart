import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class Graph extends StatelessWidget {
  const Graph({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hh(s, 272),
      child: Image.asset(
        "assets/images/graph.png",
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
