import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myFloatingActionButton extends StatelessWidget {
  const myFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      elevation: 5,
      // backgroundColor: Colors.green,
      // child: const Icon(Icons.thumb_up),
      backgroundColor: Colors.red,
      child: const Icon(FontAwesomeIcons.plugCircleMinus),
    );
  }
}
