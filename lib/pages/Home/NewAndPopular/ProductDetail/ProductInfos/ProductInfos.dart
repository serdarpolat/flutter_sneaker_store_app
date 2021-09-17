import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'BuyBidButtons.dart';
import 'InfoHeader.dart';
import 'Information.dart';
import 'LatestSales/LatestSales.dart';
import 'ProductTitle.dart';
import 'RelatedProducts.dart';

class ProductInfos extends StatelessWidget {
  const ProductInfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Positioned(
      top: hh(s, 351),
      left: 0,
      child: Container(
        width: s.width,
        height: s.height - hh(s, 351),
        padding:
            EdgeInsets.only(left: ww(s, 30), right: ww(s, 30), top: ww(s, 30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoHeader(s: s),
              SizedBox(height: hh(s, 30)),
              BuyBidButtons(s: s),
              SizedBox(height: hh(s, 30)),
              ProductTitle(),
              SizedBox(height: hh(s, 60)),
              Information(),
              SizedBox(height: hh(s, 60)),
              LatestSales(),
              SizedBox(height: hh(s, 60)),
              RelatedProducts(s: s),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: white100,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(ww(s, 24)),
          ),
          boxShadow: [
            BoxShadow(
              color: black10,
              offset: Offset(0, -6),
              blurRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}
