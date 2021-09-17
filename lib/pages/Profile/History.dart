import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class History extends StatelessWidget {
  const History({
    Key? key,
    required this.s,
    required this.title,
    required this.color,
  }) : super(key: key);

  final Size s;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: hh(s, 44),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: bold20(s, black100),
          ),
        ),
        Container(
          width: double.infinity,
          height: hh(s, 92),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Current",
                    style: bold11(s, black100),
                  ),
                  Text(
                    "3",
                    style: bold20(s, color),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pending",
                    style: bold11(s, black100),
                  ),
                  Text(
                    "0",
                    style: bold20(s, color),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "History",
                    style: bold11(s, black100),
                  ),
                  Text(
                    "5",
                    style: bold20(s, color),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ww(s, 12)),
            color: color.withOpacity(0.05),
          ),
        ),
      ],
    );
  }
}
