import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Home/Story/Components/LiveStroyItem.dart';
import 'package:x_store/pages/Home/NewAndPopular/Components/Sender.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LiveStroyItem(
          title: "Welcome to X-Store",
          sender: Sender(
            name: "X-Store",
            views: "2.1K views",
            time: "3min ago",
          ),
          img: "assets/images/p7.png",
        ),
        SizedBox(height: hh(s, 20)),
        LiveStroyItem(
          action: Container(
            width: ww(s, 48),
            height: ww(s, 48),
            child: SvgPicture.asset(
              "assets/icons/play.svg",
              fit: BoxFit.cover,
            ),
          ),
          title: "Nike Adapt BB Unboxing - Futuristic Self Lacing Sneakers",
          sender: Sender(
            name: "Unbox theraphy",
            views: "2.1K views",
            time: "3min ago",
            img: "assets/images/u1.png",
          ),
          img: "assets/images/p6.png",
        ),
        SizedBox(height: hh(s, 20)),
        LiveStroyItem(
          action: Container(
            width: ww(s, 36),
            height: hh(s, 20),
            child: Text(
              "LIVE",
              textAlign: TextAlign.center,
              style: bold11(s, white100),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ww(s, 6)),
              color: red,
            ),
          ),
          title:
              "Nike Alphafly Next% Full & Final Review | Carbon Fiber Plate Marathon Shoe",
          sender: Sender(
            name: "fideletty",
            views: "2.1K views",
            time: "3min ago",
            img: "assets/images/u2.png",
          ),
          img: "assets/images/p5.png",
        ),
        SizedBox(height: hh(s, 20)),
        LiveStroyItem(
          title: "About Jordan 1 Mid Chicago Toe",
          sender: Sender(
            name: "TheOffWhite",
            views: "2.1K views",
            time: "3min ago",
            img: "assets/images/u3.png",
          ),
          img: "assets/images/p4.png",
        ),
        SizedBox(height: hh(s, 20)),
      ],
    );
  }
}
