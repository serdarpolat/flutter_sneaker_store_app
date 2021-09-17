import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Data/JustDroppedItemData.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Widgets/ProductItemVert.dart';

class JustDropped extends StatelessWidget {
  const JustDropped({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return BaseSection(
      s: s,
      header: "Just Dropped",
      content: Container(
        height: hh(s, 234),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: ww(s, 30)),
          physics: BouncingScrollPhysics(),
          itemCount: justDroppedItems.length,
          itemBuilder: (context, index) {
            var item = justDroppedItems[index];
            return Padding(
                padding: EdgeInsets.only(right: ww(s, 15)),
                child: ProductItemvert(s: s, item: item));
          },
        ),
      ),
    );
  }
}
