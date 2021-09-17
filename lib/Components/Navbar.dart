import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:x_store/Source/source_shelf.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    final navbarCtrl = Provider.of<NavbarProvider>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: hh(s, 80),
            padding: EdgeInsets.all(hh(s, 16)),
            margin: EdgeInsets.only(bottom: hh(s, 24)),
            child: Row(
              children: [
                NavbarIcon(
                  s: s,
                  active: navbarCtrl.page == 0,
                  icon: "assets/icons/home.svg",
                  title: "Today",
                  onTap: () => navbarCtrl.switchPage(0),
                ),
                NavbarIcon(
                  s: s,
                  active: navbarCtrl.page == 1,
                  icon: "assets/icons/search.svg",
                  title: "Search",
                  onTap: () => navbarCtrl.switchPage(1),
                ),
                NavbarIcon(
                  s: s,
                  active: navbarCtrl.page == 2,
                  icon: "assets/icons/user.svg",
                  title: "Profile",
                  onTap: () => navbarCtrl.switchPage(2),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: white100,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: black10,
                  offset: Offset(0, 6),
                  blurRadius: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavbarIcon extends StatelessWidget {
  const NavbarIcon({
    Key? key,
    required this.s,
    required this.active,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final Size s;
  final bool active;
  final String icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: active ? black5 : white100,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: ww(s, 16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              if (active)
                Row(
                  children: [
                    SizedBox(width: ww(s, 8)),
                    Text(
                      title,
                      style: bold11(s, black100),
                    ),
                  ],
                ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
