import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class Sender extends StatelessWidget {
  final String? img;
  final String name;
  final String views;
  final String time;

  const Sender({
    Key? key,
    this.img,
    required this.name,
    required this.views,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Row(
      children: [
        if (name != "X-Store")
          Container(
            width: ww(s, 16),
            height: ww(s, 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        SizedBox(
          width: ww(s, 8),
        ),
        Text(
          name,
          style: bold12(s, white100),
        ),
        SizedBox(
          width: ww(s, 8),
        ),
        Text(
          views,
          style: regular11(s, white100),
        ),
        SizedBox(
          width: ww(s, 8),
        ),
        Text(
          time,
          style: regular11(s, white100),
        ),
      ],
    );
  }
}
