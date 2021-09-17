import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class BuyBidButtons extends StatelessWidget {
  const BuyBidButtons({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          borderRadius: BorderRadius.circular(ww(s, 12)),
          elevation: 0,
          color: green,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: ww(s, 150),
              height: hh(s, 72),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Buy \$214",
                    style: bold20(s, white100),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "or Bid",
                        style: regular12(s, white60),
                      ),
                      SizedBox(width: ww(s, 10)),
                      Text(
                        "Lowest Ask",
                        style: regular12(s, white100),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: [],
              ),
            ),
          ),
        ),
        Material(
          borderRadius: BorderRadius.circular(ww(s, 12)),
          elevation: 0,
          color: red,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: ww(s, 150),
              height: hh(s, 72),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sell \$265",
                    style: bold20(s, white100),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "or Ask",
                        style: regular12(s, white60),
                      ),
                      SizedBox(width: ww(s, 10)),
                      Text(
                        "Highest Bid",
                        style: regular12(s, white100),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
