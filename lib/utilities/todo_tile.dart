import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            )]),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.lightGreen,
              ),
              Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: taskCompleted ? Colors.grey : Colors.black,
                    decorationColor:
                        taskCompleted ? Colors.green : Colors.black),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.lightGreen[200],
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
