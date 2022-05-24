import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:telechat_proto/widgets/navigation/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';

MyBottomNavigationBar myBottomNavigationBar = Get.put(MyBottomNavigationBar());

class MyFloatingActionButtonController extends GetxController {
  late Icon _myIcon;
  late Rx<MaterialColor> _myCollor;

  // MyFloatingActionButtonController get getController => Get.find();// add this line

  set setMyIcon(Icon value) {
    _myIcon = value;
  }

  set setMyCollor(Rx<MaterialColor> value) {
    _myCollor = value;
  }

  Rx<MaterialColor> get getMyColor {
    _myCollor == Colors.red
        ? _myCollor.value = Colors.green
        : _myCollor.value = Colors.red;
    return _myCollor;
  }

  Icon get getMyIcon {
    _myCollor == Colors.red
        ? _myIcon = const Icon(FontAwesomeIcons.plugCircleMinus)
        : _myIcon = const Icon(FontAwesomeIcons.childReaching);
    return _myIcon;
  }
}
