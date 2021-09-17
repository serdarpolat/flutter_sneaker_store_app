import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

class Cover extends StatefulWidget {
  const Cover({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  PageController controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: ww(widget.s, 375),
      height: ww(widget.s, 375),
      color: white100,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            controller: controller,
            physics: BouncingScrollPhysics(),
            onPageChanged: (val) => setState(() => page = val),
            itemBuilder: (context, index) {
              return Container(
                width: ww(widget.s, 375),
                height: ww(widget.s, 375),
                color: white100,
                child: Center(
                  child: Container(
                    width: ww(s, 300),
                    height: hh(s, 214),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: hh(s, 54)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: hh(s, 2)),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 240),
                      width: index == page ? ww(s, 40) : ww(s, 6),
                      height: hh(s, 2),
                      decoration: BoxDecoration(
                        color: index == page ? black100 : black10,
                        borderRadius: BorderRadius.circular(hh(s, 2)),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            top: hh(s, 54),
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: ww(s, 30)),
              width: s.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButton(
                    s: s,
                    onTap: () => back(context),
                    color: black5,
                    child: SvgPicture.asset(
                      "assets/icons/chevronLeft.svg",
                      width: hh(s, 24),
                      height: hh(s, 24),
                    ),
                  ),
                  Row(
                    children: [
                      CircleButton(
                        s: s,
                        onTap: () => back(context),
                        color: Colors.white,
                        child: SvgPicture.asset(
                          "assets/icons/plus.svg",
                          width: hh(s, 24),
                          height: hh(s, 24),
                        ),
                      ),
                      SizedBox(width: ww(s, 10)),
                      CircleButton(
                        s: s,
                        onTap: () => back(context),
                        color: Colors.white,
                        child: SvgPicture.asset(
                          "assets/icons/more.svg",
                          width: hh(s, 24),
                          height: hh(s, 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> images = [
  "assets/images/p21.png",
  "assets/images/p20.png",
  "assets/images/p19.png",
];
