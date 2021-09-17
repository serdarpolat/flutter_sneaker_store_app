import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'RecommendedSearch.dart';
import 'SearchBar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: white100,
      padding: EdgeInsets.symmetric(horizontal: ww(s, 30)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(s, 52)),
            Text(
              "Search",
              style: bold28(s, black100),
            ),
            SizedBox(height: hh(s, 20)),
            SearchBar(),
            SizedBox(height: hh(s, 20)),
            RecommendedSearch(s: s),
          ],
        ),
      ),
    );
  }
}
