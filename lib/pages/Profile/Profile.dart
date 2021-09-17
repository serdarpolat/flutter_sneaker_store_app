import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'History.dart';
import 'ProfileHeader.dart';
import 'ProfileInfo.dart';
import 'UserInfos.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: white100,
      child: horizontalPadding30(
        s,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: hh(s, 52)),
              ProfileHeader(s: s),
              SizedBox(height: hh(s, 52)),
              ProfileInfo(s: s),
              SizedBox(height: hh(s, 20)),
              History(
                s: s,
                title: "Buying",
                color: green,
              ),
              SizedBox(height: hh(s, 20)),
              History(
                s: s,
                title: "Selling",
                color: red,
              ),
              SizedBox(height: hh(s, 20)),
              UserInfos(s: s),
              SizedBox(height: hh(s, 124)),
            ],
          ),
        ),
      ),
    );
  }
}
