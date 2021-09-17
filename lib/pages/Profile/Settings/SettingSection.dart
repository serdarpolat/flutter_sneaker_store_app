import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'SectionItem.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({
    Key? key,
    required this.items,
    required this.title,
  }) : super(key: key);
  final String title;
  final List<SectionItem> items;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: bold12(s, black30),
          ),
          SizedBox(height: hh(s, 10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              items.length,
              (index) => items[index],
            ),
          ),
        ],
      ),
    );
  }
}
