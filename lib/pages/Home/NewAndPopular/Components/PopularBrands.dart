import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Data/BrandListItemData.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Widgets/BrandListItem.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      s: s,
      header: "Popular Brands",
      height: hh(s, 160),
      content: Container(
        height: hh(s, 112),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: ww(s, 30)),
          physics: BouncingScrollPhysics(),
          itemCount: brandItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: ww(s, 10)),
              child: BrandListItem(s: s, item: brandItems[index]),
            );
          },
        ),
      ),
    );
  }
}
