import 'package:flutter/material.dart';
import 'package:tododo/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          "ToDoDo",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.lightBlue[100],
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "make an app",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
