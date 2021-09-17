import 'package:flutter/material.dart';
import 'package:x_store/Models/ProductItemModel.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Widgets/ProductItemHor.dart';
import 'package:x_store/pages/pages_shelf.dart';

import 'Components/JustDropped.dart';
import 'Components/MostPopular.dart';
import 'Components/NewHighestAsks.dart';
import 'Components/NewLowestAsks.dart';
import 'Components/PopularBrands.dart';
import 'Components/RecommendedForYou.dart';

List<Column> horizontalData(Size s, List<ProductItemModel> items) {
  List<Column> columns = [];

  for (var i = 1; i <= (items.length / 2).ceil(); i++) {
    var n = (i * 2) - 2;
    var ne = items.sublist(n, n + 2);
    columns.add(Column(
      children: List.generate(ne.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: ww(s, 15)),
          child: ProductItemHor(s: s, item: ne[index]),
        );
      }),
    ));
  }

  return columns;
}

class NewAndPopular extends StatelessWidget {
  const NewAndPopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewInCarousel(),
        SizedBox(height: hh(s, 60)),
        JustDropped(s: s),
        SizedBox(height: hh(s, 60)),
        MostPopular(s: s),
        SizedBox(height: hh(s, 60)),
        PopularBrands(s: s),
        SizedBox(height: hh(s, 60)),
        RecommendedForYou(s: s),
        SizedBox(height: hh(s, 60)),
        NewLowestAsks(s: s),
        SizedBox(height: hh(s, 60)),
        NewHighestAsks(s: s),
      ],
    );
  }
}
