import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/pages_shelf.dart';

import 'Profile/Profile.dart';
import 'Search/Search.dart';

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    final navbarCtrl = Provider.of<NavbarProvider>(context);
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            views[navbarCtrl.page],
            Navbar(s: s),
          ],
        ),
      ),
    );
  }
}

List<Widget> views = [
  Home(),
  Search(),
  Profile(),
];
