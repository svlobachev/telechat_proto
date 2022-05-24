import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:telechat_proto/widgets/navigation/bottom_navigation_bar/controller/MyFloatingActionButtonController.dart';

MyFloatingActionButtonController myFloatingActionButtonController =
    Get.put(MyFloatingActionButtonController());

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  final RxInt _selectedIndex = 0.obs;

  Rx<MaterialColor> _myCollor = Colors.red.obs;
  Icon _myIcon = const Icon(FontAwesomeIcons.plugCircleMinus);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0',
      style: optionStyle,
    ),
    Text(
      'Index 1',
      style: optionStyle,
    ),
    Text(
      'Index 2',
      style: optionStyle,
    ),
    Text(
      'Index 3',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      _selectedIndex.value = index;
    }

    return Obx(() => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              myFloatingActionButtonController.setMyCollor = _myCollor;
              myFloatingActionButtonController.setMyIcon = _myIcon;
              // _myCollor =
              //     myFloatingActionButtonController.getController.tackeMyColor();
              _myCollor = myFloatingActionButtonController.getMyColor;
              _myIcon = myFloatingActionButtonController.getMyIcon;
            },
            elevation: 5,
            backgroundColor: _myCollor.value,
            child: _myIcon,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex.value),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.theater_comedy),
                label: 'Мои темы',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.radar),
                label: 'Радар',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Мои чаты',
              ),
            ],
            currentIndex: _selectedIndex.value,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ));
  }
}
