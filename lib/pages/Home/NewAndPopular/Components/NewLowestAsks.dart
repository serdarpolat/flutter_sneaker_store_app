import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Data/MostPopularData.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Home/NewAndPopular/NewAndPopular.dart';

class NewLowestAsks extends StatelessWidget {
  const NewLowestAsks({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      s: s,
      header: "New Lowest Asks",
      content: Container(
        height: hh(s, 234),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: ww(s, 30)),
          physics: BouncingScrollPhysics(),
          itemCount: horizontalData(s, mostPopularItems).length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: ww(s, 15)),
              child: horizontalData(s, mostPopularItems)[index],
            );
          },
        ),
      ),
    );
  }
}
