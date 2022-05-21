import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:telechat_proto/bottom_navigation_bar/model/slected_index.dart';
import 'package:telechat_proto/widgets/navigation/floatingActionButton.dart';
import 'package:telechat_proto/widgets/navigation/myAppBar.dart';
import 'package:telechat_proto/widgets/navigation/navDrawer.dart';

class MyBottomNavigationBar extends StatelessWidget {
  int _selectedIndex = 0;
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
    var provider = Provider.of<SelectedIndexData>(context);
    void _onItemTapped(int index) {
      _selectedIndex = provider.setSelectedIndex = index;
    }

    return Scaffold(
      floatingActionButton: myFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
