import 'package:flutter/material.dart';

class NavbarProvider with ChangeNotifier {
  int _page = 0;
  int get page => _page;

  switchPage(int i) {
    _page = i;
    notifyListeners();
  }
}

class HomePageProvider with ChangeNotifier {
  int _page = 0;
  int get page => _page;

  switchPage(int i) {
    _page = i;
    notifyListeners();
  }
}
