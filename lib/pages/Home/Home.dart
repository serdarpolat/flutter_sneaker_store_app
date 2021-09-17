import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'NewAndPopular/NewAndPopular.dart';
import 'Story/Story.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    final pagectrl = Provider.of<HomePageProvider>(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(s, 74)),
          horizontalPadding30(
            s,
            child: Text(
              "Today",
              style: bold28(s, black100),
            ),
          ),
          SizedBox(height: hh(s, 8)),
          horizontalPadding30(
            s,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    pagectrl.switchPage(0);
                  },
                  child: Text(
                    "New&Popular",
                    style: bold28(s, pagectrl.page == 0 ? black100 : black30),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pagectrl.switchPage(1);
                  },
                  child: Text(
                    "Story",
                    style: bold28(s, pagectrl.page == 1 ? black100 : black30),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(s, 20)),
          homePages[pagectrl.page],
          SizedBox(height: hh(s, 128)),
        ],
      ),
    );
  }
}

List<Widget> homePages = [
  NewAndPopular(),
  Story(),
];


// 21 abb 386
// cy32