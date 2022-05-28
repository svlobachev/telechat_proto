import 'package:flutter/material.dart';

class TextBarAtBottom extends StatelessWidget {
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // First child is TextInput
      Expanded(
          child: Container(
        child: TextFormField(
          autocorrect: false,
          decoration: new InputDecoration(
            labelText: "Some Text",
            labelStyle: TextStyle(fontSize: 16.0, color: Colors.black),
            // fillColor: Colors.black,
            // border:
            //     OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          ),
        ),
      )),
      // Second child is button
      IconButton(
        icon: Icon(Icons.send),
        iconSize: 16.0,
        onPressed: () {},
      )
    ]);
  }
}
