// import 'dart:js_util';

import 'package:flutter/cupertino.dart';

class HomePageProvider with ChangeNotifier {
  int index = 0;
  HomePageProvider({required this.index});

  void setIndex(int index) {
    this.index = index;
    notifyListeners();
  }

  void remove() {
    index = 0;
    notifyListeners();
  }
}
