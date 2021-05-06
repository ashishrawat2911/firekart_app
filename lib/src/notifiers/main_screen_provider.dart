import 'package:flutter/cupertino.dart';

class MainScreenProvider with ChangeNotifier {
  int _bottomBarIndex = 0;

  int get bottomBarIndex => _bottomBarIndex;

  set bottomBarIndex(int value) {
    _bottomBarIndex = value;
    notifyListeners();
  }
}
