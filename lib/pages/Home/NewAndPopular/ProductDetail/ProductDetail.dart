import 'package:flutter/material.dart';

import 'Cover.dart';
import 'ProductInfos/ProductInfos.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            Cover(s: s),
            ProductInfos(),
          ],
        ),
      ),
    );
  }
}
