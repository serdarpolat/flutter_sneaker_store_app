import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import 'InputWithIcon.dart';
import 'SocialSign.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: horizontalPadding30(
          s,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: hh(s, 74)),
                CircleButton(
                  s: s,
                  onTap: () => back(context),
                  color: black5,
                  child: SvgPicture.asset(
                    "assets/icons/close.svg",
                    width: hh(s, 24),
                    height: hh(s, 24),
                  ),
                ),
                SizedBox(height: hh(s, 30)),
                Text(
                  "Let's Get Started!",
                  style: bold28(s, black100),
                ),
                SizedBox(height: hh(s, 8)),
                Text(
                  "Sign up with social or the fill the form to continue.",
                  style: regular12(s, black60),
                ),
                SizedBox(height: hh(s, 18)),
                Row(
                  children: [
                    SocialSign(s: s, icon: "assets/icons/logoTwitter.svg"),
                    SizedBox(width: ww(s, 16)),
                    SocialSign(s: s, icon: "assets/icons/logoFacebook.svg"),
                    SizedBox(width: ww(s, 16)),
                    SocialSign(s: s, icon: "assets/icons/logoApple.svg"),
                  ],
                ),
                SizedBox(height: hh(s, 20)),
                Divider(
                  color: black30,
                  height: hh(s, 0.5),
                ),
                SizedBox(height: hh(s, 28)),
                InputWithIcon(
                  s: s,
                  icon: Icons.mail_outline_rounded,
                  hint: "Email",
                ),
                SizedBox(height: hh(s, 10)),
                InputWithIcon(
                  s: s,
                  icon: Icons.person_outline_rounded,
                  hint: "Name",
                ),
                SizedBox(height: hh(s, 10)),
                InputWithIcon(
                  s: s,
                  icon: Icons.lock_outline_rounded,
                  hint: "Password",
                  secured: true,
                ),
                SizedBox(height: hh(s, 8)),
                Text(
                  "At least 8 characters, 1 uppercase, 1 number, 1 symbol",
                  style: regular11(s, black30),
                ),
                SizedBox(height: hh(s, 110)),
                Container(
                  height: hh(s, 32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/checkOff.svg"),
                      SizedBox(width: ww(s, 8)),
                      Container(
                        width: ww(s, 283),
                        child: Wrap(
                          children: [
                            Text(
                              "By Signing up, you agree to the ",
                              style: regular12(s, black30),
                            ),
                            Text(
                              "Terms of Service",
                              style: regular12(s, black100),
                            ),
                            Text(
                              " and ",
                              style: regular12(s, black30),
                            ),
                            Text(
                              "Privacy Policy",
                              style: regular12(s, black100),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hh(s, 20)),
                Container(
                  child: Center(
                    child: StretchButton(
                      s: s,
                      child: Text(
                        "Sign Up",
                        style: bold16(s, black60),
                      ),
                      color: white100,
                      tapColor: blue,
                      elevation: 3,
                      width: ww(s, 160),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
