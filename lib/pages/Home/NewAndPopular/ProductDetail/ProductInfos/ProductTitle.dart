import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: hh(s, 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Jordan 14 Retro Gym Red Toro",
            style: bold28(s, black100),
          ),
          RichText(
            text: TextSpan(
              style: regular12(s, black100),
              children: [
                TextSpan(
                  text: "Condition:",
                ),
                TextSpan(
                  text: "New",
                  style: regular12(s, green),
                ),
                TextSpan(
                  text: " • ",
                ),
                TextSpan(
                  text: "Ticker:JB-JO1RBGRBW",
                ),
                TextSpan(
                  text: " • ",
                ),
                TextSpan(
                  text: "100% Authentic",
                  style: regular12(s, green),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
