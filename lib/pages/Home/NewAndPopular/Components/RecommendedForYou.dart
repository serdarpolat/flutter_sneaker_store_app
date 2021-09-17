import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Data/RecommendedItemData.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Widgets/ProductItemVert.dart';

class RecommendedForYou extends StatelessWidget {
  const RecommendedForYou({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      s: s,
      header: "Recommended For You",
      content: Container(
        height: hh(s, 234),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: ww(s, 30)),
          physics: BouncingScrollPhysics(),
          itemCount: recommendedItems.length,
          itemBuilder: (context, index) {
            var item = recommendedItems[index];
            return Padding(
                padding: EdgeInsets.only(right: ww(s, 15)),
                child: ProductItemvert(s: s, item: item));
          },
        ),
      ),
    );
  }
}
