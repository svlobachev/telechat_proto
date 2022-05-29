import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          decoration: InputDecoration(
            labelText: 'yourMessage'.tr,
            labelStyle: TextStyle(
                fontSize: 16.0, color: Theme.of(context).colorScheme.primary),
            // fillColor: Colors.black,
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          ),
        ),
      )),
      // Second child is button
      IconButton(
        icon: const Icon(Icons.send),
        iconSize: 16.0,
        onPressed: () {},
      )
    ]);
  }
}
