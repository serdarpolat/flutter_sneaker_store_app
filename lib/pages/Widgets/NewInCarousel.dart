import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class NewInCarousel extends StatefulWidget {
  const NewInCarousel({Key? key}) : super(key: key);

  @override
  _NewInCarouselState createState() => _NewInCarouselState();
}

class _NewInCarouselState extends State<NewInCarousel> {
  PageController controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: hh(s, 330),
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: newInItems.length,
            onPageChanged: (val) {
              setState(() {
                page = val;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: hh(s, 30)),
                child: Container(
                  height: hh(s, 330),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: hh(s, 24), vertical: hh(s, 24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "New In",
                          style: bold12(s, white100),
                        ),
                        SizedBox(height: 8),
                        Text(
                          newInItems[page].model,
                          style: bold20(s, white100),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "\$${newInItems[page].price} USD",
                          style: bold14(s, white100),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(newInItems[index].img),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(
                      hh(s, 12),
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: ww(s, 54),
            bottom: ww(s, 24),
            child: Row(
              children: List.generate(newInItems.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 320),
                  width: newInItems[index].id == page ? ww(s, 40) : ww(s, 6),
                  height: hh(s, 2),
                  margin: EdgeInsets.only(
                      right: index != (newInItems.length - 1) ? ww(s, 4) : 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: newInItems[index].id == page ? white100 : white60,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class NewInItemModel {
  final int id;
  final String img;
  final String model;
  final double price;

  NewInItemModel(this.id, this.img, this.model, this.price);
}

List<NewInItemModel> newInItems = [
  NewInItemModel(0, "assets/images/p9.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 89.95),
  NewInItemModel(1, "assets/images/p7.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 79.95),
  NewInItemModel(2, "assets/images/p6.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 65.95),
  NewInItemModel(3, "assets/images/p5.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 77.95),
  NewInItemModel(4, "assets/images/p4.png",
      "Nike SB Janoski QS Turbo Green Tie Dye Skate Shoes", 59.95),
];
