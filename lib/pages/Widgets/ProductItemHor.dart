import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Models/ProductItemModel.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Home/NewAndPopular/ProductDetail/ProductDetail.dart';

class ProductItemHor extends StatelessWidget {
  const ProductItemHor({
    Key? key,
    required this.s,
    required this.item,
  }) : super(key: key);

  final Size s;
  final ProductItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goPush(context, ProductDetail());
      },
      child: Container(
        width: ww(s, 315),
        height: hh(s, 88),
        child: Row(
          children: [
            Container(
              width: hh(s, 88),
              height: hh(s, 88),
              child: Center(
                child: Image.asset(
                  item.image,
                  width: ww(s, 120),
                ),
              ),
              decoration: BoxDecoration(
                color: white100,
                borderRadius: BorderRadius.circular(ww(s, 12)),
              ),
            ),
            SizedBox(width: ww(s, 15)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(item.brand, width: ww(s, 24)),
                Container(
                  child: Text(
                    item.model,
                    style: regular12(s, black100),
                  ),
                ),
                Text(
                  item.title,
                  style: regular11(s, black30),
                ),
                Text(
                  item.price,
                  style: bold14(s, black100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
