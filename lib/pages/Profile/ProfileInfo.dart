import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(hh(s, 96)),
          child: Container(
            color: red,
            width: hh(s, 96),
            height: hh(s, 96),
            child: Image.asset(
              "assets/images/u1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: ww(s, 15)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Alicia",
              style: bold20(s, black100),
            ),
            Text(
              "jeans@jeans-studio.com",
              style: bold12(s, black100),
            ),
            Text(
              "jeans@jeans-studio.com",
              style: regular11(s, black30),
            ),
          ],
        ),
      ],
    );
  }
}
