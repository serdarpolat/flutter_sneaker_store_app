import 'package:flutter/material.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'SignIn.dart';
import 'SignUp.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: hh(s, 74),
            ),
            Container(
              width: ww(s, 253),
              height: hh(s, 164),
              padding: EdgeInsets.only(left: secondaryPadding(s)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buy & Sell Authentic",
                    style: bold16(s, red),
                  ),
                  Text(
                    "X - Store",
                    style: TextStyle(
                      color: white100,
                      fontSize: hh(s, 48),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "Real Time\nMarket Pricing",
                    style: bold24(s, white100),
                  ),
                ],
              ),
            ),
            Spacer(),
            StretchButton(
              s: s,
              onTap: () => goPush(context, SignUp()),
              elevation: 4,
              child: Text(
                "Sign Up",
                style: bold16(s, black100),
              ),
              color: white100,
            ),
            SizedBox(height: hh(s, 10)),
            StretchButton(
              s: s,
              onTap: () {
                print("object");
                goPush(context, SignIn());
              },
              child: Text(
                "Sign In",
                style: bold16(s, white100),
              ),
              color: black30,
            ),
            SizedBox(height: hh(s, 64)),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
