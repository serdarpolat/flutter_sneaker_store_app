import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'Settings/Settings.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Profile",
          style: bold28(s, black100),
        ),
        CircleButton(
          s: s,
          onTap: () => goPush(context, Settings()),
          child: SvgPicture.asset("assets/icons/setting.svg"),
          color: black5,
        ),
      ],
    );
  }
}
