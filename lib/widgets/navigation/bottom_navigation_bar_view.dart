import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  final RxInt _selectedIndex = 0.obs;
  final Rx<MaterialColor> _myCollor = Colors.red.obs;
  Icon _myIcon = const Icon(FontAwesomeIcons.plugCircleMinus);
  // Image _myIcon = new Image.asset(
  //   'assets/img/icons8_1.gif',
  //   width: 30.0,
  //   height: 30.0,
  // );
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
              _myCollor == Colors.red
                  ? {
                      _myCollor.value = Colors.green,
                      _myIcon = const Icon(FontAwesomeIcons.childReaching)
                    }
                  : {
                      _myCollor.value = Colors.red,
                      _myIcon = const Icon(FontAwesomeIcons.plugCircleMinus)
                    };
            },
            elevation: 5,
            // backgroundColor: Colors.green,
            // child: const Icon(Icons.thumb_up),
            // backgroundColor: Colors.red,
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
                // icon: Icon(FontAwesomeIcons.rad),
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
