import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';
import 'package:x_store/pages/Home/Story/StoryItemDetail.dart';

class LiveStroyItem extends StatelessWidget {
  const LiveStroyItem({
    Key? key,
    required this.title,
    required this.sender,
    required this.img,
    this.action,
  }) : super(key: key);
  final String title;
  final Widget sender;
  final String img;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        goPush(context, StoryItemDetail());
      },
      child: Container(
        width: ww(s, 315),
        height: ww(s, 315),
        margin: EdgeInsets.only(left: ww(s, 30)),
        child: Stack(
          children: [
            Container(
              width: ww(s, 315),
              height: ww(s, 315),
              padding: EdgeInsets.all(ww(s, 24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  action ?? Container(),
                  SizedBox(height: hh(s, 10)),
                  Text(
                    title,
                    style: bold20(s, white100),
                  ),
                  SizedBox(height: hh(s, 8)),
                  sender,
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [black30, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.circular(ww(s, 12)),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ww(s, 12)),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: black5,
            width: ww(s, 0.5),
          ),
          boxShadow: [
            BoxShadow(
              color: black10,
              offset: Offset(0, 8),
              blurRadius: 16,
            ),
          ],
        ),
      ),
    );
  }
}
