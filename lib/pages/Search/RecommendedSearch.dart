import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class RecommendedSearch extends StatelessWidget {
  const RecommendedSearch({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        recommendedSearch.length,
        (index) => MaterialButton(
          onPressed: () {},
          minWidth: double.infinity,
          height: hh(s, 40),
          child: Text(
            recommendedSearch[index],
            style: regular16(s, black100),
          ),
        ),
      ),
    );
  }
}

List<String> recommendedSearch = [
  "jordan 1",
  "yeezy",
  "jordan 14",
  "off white",
  "dior",
  "travis scott",
  "supreme",
  "air force",
  "jordan 4",
  "adidas",
];
