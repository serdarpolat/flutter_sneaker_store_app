import 'package:flutter/material.dart';
import 'package:x_store/Data/MostPopularData.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Home/NewAndPopular/NewAndPopular.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hh(s, 282),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Related Products",
            style: bold20(s, black100),
          ),
          Spacer(),
          Container(
            height: hh(s, 234),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
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
        ],
      ),
    );
  }
}
