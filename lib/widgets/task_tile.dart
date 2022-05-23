// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function updateTask;
  final Function deleteTask;
  TaskTile({
    required this.task,
    required this.updateTask,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => deleteTask,
      title: Text(
        task.name,
        style: TextStyle(decoration: task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: (value) => updateTask(value),
        value: task.isDone,
      ),
    );
  }
}
