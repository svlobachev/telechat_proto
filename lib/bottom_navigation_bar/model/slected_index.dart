import 'package:flutter/material.dart';

class SelectedIndexData with ChangeNotifier {
  set setSelectedIndex(int selectedIndex) {
    notifyListeners();
  }
}
