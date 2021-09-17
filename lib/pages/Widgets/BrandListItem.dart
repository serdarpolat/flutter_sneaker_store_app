import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/BrandListItemModel.dart';
import 'package:x_store/Source/source_shelf.dart';

class BrandListItem extends StatelessWidget {
  const BrandListItem({
    Key? key,
    required this.s,
    required this.item,
  }) : super(key: key);

  final Size s;
  final BrandListItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(s, 72),
      height: hh(s, 112),
      child: Column(
        children: [
          Container(
            width: ww(s, 72),
            height: ww(s, 72),
            child: Center(
              child: SvgPicture.asset(
                item.img,
                width: ww(s, 24),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: black5,
            ),
          ),
          Spacer(),
          Text(
            item.name,
            style: bold11(s, black100),
          ),
          Text(
            "All ${item.number}",
            style: regular11(s, black30),
          ),
        ],
      ),
    );
  }
}
