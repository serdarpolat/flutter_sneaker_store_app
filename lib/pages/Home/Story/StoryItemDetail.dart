import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'Components/DefinitionStory.dart';
import 'Components/HeroImage.dart';
import 'Components/InfoItemsAndData.dart';

class StoryItemDetail extends StatelessWidget {
  const StoryItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroImage(s: s),
            DefinitionStory(s: s),
            TheInfo(
              s: s,
              header: "The Basic",
              bgColor: white100,
              infoItems: basifInfoItems,
              height: hh(s, 372),
            ),
            TheInfo(
              s: s,
              header: "Buying on X-S-Store",
              bgColor: black5,
              infoItems: buyingItems,
              height: hh(s, 444),
              child: Column(
                children: [
                  SizedBox(height: hh(s, 16)),
                  Container(
                    child: Center(
                      child: StretchButton(
                        s: s,
                        child: Text(
                          "Learn More",
                          style: bold16(s, white100),
                        ),
                        color: green,
                        tapColor: blue,
                        elevation: 3,
                        width: ww(s, 160),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TheInfo(
              s: s,
              header: "Selling on X-S-Store",
              bgColor: white100,
              infoItems: sellingItems,
              height: hh(s, 444),
              child: Column(
                children: [
                  SizedBox(height: hh(s, 16)),
                  Container(
                    child: Center(
                      child: StretchButton(
                        s: s,
                        child: Text(
                          "Learn More",
                          style: bold16(s, white100),
                        ),
                        color: red,
                        tapColor: blue,
                        elevation: 3,
                        width: ww(s, 160),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
