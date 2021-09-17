import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'TheInfoItem.dart';

class TheInfo extends StatelessWidget {
  const TheInfo({
    Key? key,
    required this.s,
    required this.height,
    required this.header,
    required this.bgColor,
    required this.infoItems,
    this.child,
  }) : super(key: key);

  final Size s;
  final double height;
  final String header;
  final Color bgColor;
  final List<TheInfoItem> infoItems;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(s, 375),
      height: hh(s, height),
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: secondaryPadding(s), vertical: hh(s, 40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: bold20(s, black100),
          ),
          ...List.generate(infoItems.length, (index) => infoItems[index]),
          child ?? Container(),
        ],
      ),
    );
  }
}

List<TheInfoItem> basifInfoItems = [
  TheInfoItem(
    title: "Anonymity",
    subTitle:
        "Never worry about legit buyers or sellers – we’re in the middle.",
  ),
  TheInfoItem(
    title: "Transparency",
    subTitle: "Real-time market data for intelligent buying and selling.",
  ),
  TheInfoItem(
    title: "Authencity",
    subTitle: "Our experts authenticate every product sold on X-S-Store.",
  ),
];

List<TheInfoItem> buyingItems = [
  TheInfoItem(
    title: "Bid (Buy)",
    subTitle:
        "Make an offer that any seller can accept; or purchase immediately at the lowest Ask.",
  ),
  TheInfoItem(
    title: "Authencticate",
    subTitle:
        "Seller ships to us. We authenticate, then we release funds to the seller.",
  ),
  TheInfoItem(
    title: "Prosper",
    subTitle:
        "We ship to you. You sip a daiquiri, knowing you will never get a fake.",
  ),
];

List<TheInfoItem> sellingItems = [
  TheInfoItem(
    title: "Ask (Sell)",
    subTitle: "List an item for sale; or sell immediately at the highest Bid.",
  ),
  TheInfoItem(
    title: "Authencticate",
    subTitle:
        "Ship your item within 2 business days. We authenticate, then we ship to the buyer.",
  ),
  TheInfoItem(
    title: "Prosper",
    subTitle:
        "We release funds to you. You sip a daiquiri, knowing you will never get a chargeback.",
  ),
];
