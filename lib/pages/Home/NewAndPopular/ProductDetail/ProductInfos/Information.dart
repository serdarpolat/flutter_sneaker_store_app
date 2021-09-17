import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: hh(s, hh(s, 184)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Information",
            style: bold16(s, black100),
          ),
          SizedBox(height: 20),
          Container(
            height: hh(s, 140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InformationItem(s: s, variable: "Style", value: "487471-006"),
                InformationItem(
                    s: s,
                    variable: "Colorway",
                    value: "BLACK\nWHITE-OFF WHITE-GYM RED"),
                InformationItem(s: s, variable: "Retail Price", value: "\$190"),
                InformationItem(
                    s: s, variable: "Release Date", value: "07/02/2020"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InformationItem extends StatelessWidget {
  const InformationItem({
    Key? key,
    required this.s,
    required this.variable,
    required this.value,
  }) : super(key: key);

  final Size s;
  final String variable;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: ww(s, 96),
          child: Text(
            variable,
            style: regular12(s, black60),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: regular12(s, black100),
          ),
        ),
      ],
    );
  }
}
