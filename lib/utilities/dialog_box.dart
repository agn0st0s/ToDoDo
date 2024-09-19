import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tododo/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightGreen[200],
      content: Container(
        height: 120,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user ip
            TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 2,),
                  borderRadius: BorderRadius.circular(22),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightGreen.shade300, width: 2),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              MyButton(text: "save", onPressed:(){}),
              MyButton(text: "cancel", onPressed:(){}),
            ],)
          ],
        ),
      ),
    );
  }
}