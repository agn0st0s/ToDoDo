import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightGreen[200],
      content: Container(
        height: 120,
        width: 250,
        child:  Column(
          children: [
            // user ip
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightGreen, width: 2),
                ),
                 enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen.shade300, width: 2.0),
          ),
              ),
            ),
            // others
          ],
        ),
      ),
    );
  }
}
