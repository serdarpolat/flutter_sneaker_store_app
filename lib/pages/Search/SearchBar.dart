import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode _focus = new FocusNode();
  bool focused = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(() => _onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_focus.hasFocus) {
      setState(() {
        focused = true;
      });
    }

    if (!_focus.hasFocus) {
      setState(() {
        focused = false;
      });
    }
    print("Has Focus: " + _focus.hasFocus.toString());
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: hh(s, 56),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: TextField(
                focusNode: _focus,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/icons/search.svg",
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/icons/filter.svg",
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: bold16(s, black30),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                color: black5,
              ),
            ),
          ),
          SizedBox(width: ww(s, 8)),
          CircleButton(
            s: s,
            onTap: () {
              FocusScope.of(context).unfocus();
              _onFocusChange();
            },
            color: black10,
            child: SvgPicture.asset(
              !focused ? "assets/icons/camera.svg" : "assets/icons/close.svg",
              width: ww(s, 24),
            ),
          ),
        ],
      ),
    );
  }
}
