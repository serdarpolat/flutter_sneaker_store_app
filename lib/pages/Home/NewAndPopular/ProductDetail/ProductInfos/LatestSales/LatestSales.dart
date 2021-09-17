import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'Graph.dart';
import 'Sales.dart';

class LatestSales extends StatelessWidget {
  const LatestSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: hh(s, 704.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Sales",
            style: bold16(s, black100),
          ),
          SizedBox(height: hh(s, 20)),
          Graph(s: s),
          SizedBox(height: hh(s, 30)),
          Sales(s: s),
          SizedBox(height: hh(s, 10)),
          Container(
            width: double.infinity,
            child: Text(
              "View All Sales",
              textAlign: TextAlign.center,
              style: regular12(s, black30),
            ),
          ),
          SizedBox(height: hh(s, 30)),
          Container(
            width: double.infinity,
            height: hh(s, 108),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "52 Week",
                          style: bold12(s, black100),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "\$500",
                              style: bold16(s, black100),
                            ),
                            Text(
                              "\$500",
                              style: bold16(s, black100),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "High",
                              style: regular11(s, black30),
                            ),
                            Text(
                              "Low",
                              style: regular11(s, black30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "52 Week",
                          style: bold12(s, black100),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "\$500",
                              style: bold16(s, black100),
                            ),
                            Text(
                              "\$500",
                              style: bold16(s, black100),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "High",
                              style: regular11(s, black30),
                            ),
                            Text(
                              "Low",
                              style: regular11(s, black30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ww(s, 12)),
              color: black5,
            ),
          ),
        ],
      ),
    );
  }
}
