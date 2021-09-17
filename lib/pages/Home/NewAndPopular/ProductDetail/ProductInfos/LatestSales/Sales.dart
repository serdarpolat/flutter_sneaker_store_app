import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

class Sales extends StatelessWidget {
  const Sales({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hh(s, 192.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SalesHeader(s: s),
          Divider(
            color: black30,
            height: hh(s, 0.5),
          ),
          ...List.generate(salesItems.length, (index) => salesItems[index]),
        ],
      ),
    );
  }
}

List<SalesItem> salesItems = [
  SalesItem(
      size: "9.5",
      price: "\$254",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "11.5",
      price: "\$249",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "10",
      price: "\$245",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "12",
      price: "\$252",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
  SalesItem(
      size: "11.5",
      price: "\$214",
      date: "Fri.July 3. 2020",
      time: "Fri.July 3. 2020"),
];

class SalesItem extends StatelessWidget {
  const SalesItem({
    Key? key,
    required this.size,
    required this.price,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String size;
  final String price;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            size,
            style: regular12(s, black100),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            price,
            style: regular12(s, black100),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            date,
            style: regular12(s, black100),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            time,
            style: regular12(s, black100),
          ),
        ),
      ],
    );
  }
}

class SalesHeader extends StatelessWidget {
  const SalesHeader({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            "Size",
            style: bold12(s, black100),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Sale Price",
            style: bold12(s, black100),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Date",
            style: bold12(s, black100),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Time",
            style: bold12(s, black100),
          ),
        ),
      ],
    );
  }
}
