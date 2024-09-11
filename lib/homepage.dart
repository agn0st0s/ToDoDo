import 'package:flutter/material.dart';
import 'package:tododo/utilities/dialog_box.dart';
import 'package:tododo/utilities/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // list of todo
  List toDolist = [
    ["make app",false],
    ["improve app",false],
  ];
  // box changes
  void checkBoxchanged(bool? value,int index){
    setState(() {
      toDolist[index][1]=!toDolist[index][1];
    });
  }
  // new task
  void createNewtask(){
    showDialog(context: context, builder: (context) {
      return DialogBox();
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ToDoDo",
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.lightGreen[200],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewtask,
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        child: Icon(Icons.add)
      ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder:(context, index) {
          return ToDoTile(taskName: toDolist[index][0], taskCompleted: toDolist[index][1], onChanged: (value)=>checkBoxchanged(value,index),);
        },
      ),
    );
  }
}
