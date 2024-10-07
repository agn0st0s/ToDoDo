import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDolist = [];

//reference the box
final _myBox = Hive.box('mybox');

//first time run
void createinitData(){
  toDolist = [
    ["Clean room",false],
    ["Do exercise",false],
  ];
}

//load data from database
void loadData(){
  toDolist = _myBox.get("TODOLIST");
}

//update the database
void updateDataBase(){
  _myBox.put("TODOLIST", toDolist);
}
}