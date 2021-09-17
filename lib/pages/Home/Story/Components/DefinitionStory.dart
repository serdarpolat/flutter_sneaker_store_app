import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class DefinitionStory extends StatelessWidget {
  const DefinitionStory({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(s, 375),
      height: hh(s, 244),
      color: black100,
      padding: EdgeInsets.symmetric(
          horizontal: secondaryPadding(s), vertical: hh(s, 40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The stock market for things",
            style: bold20(s, white100),
          ),
          Spacer(),
          Text(
            "X-S-Store is the world’s first stock market for things – a live ‘bid/ask’ marketplace. Buyers place bids, sellers place asks and when a bid and ask meet, the transaction happens automatically. Retro Jordans, Nikes, Yeezys and more – now 100% authentic guaranteed.",
            style: regular14(s, white60),
          ),
        ],
      ),
    );
  }
}
