// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/task.dart';

class TaskTile extends StatefulWidget {
  final Task task;

  TaskTile(this.task);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  void toggleCheckboxState(bool checkboxState) => setState(() => widget.task.isDone = checkboxState);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task.name,
        style: TextStyle(decoration: widget.task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkBoxState: widget.task.isDone,
        toggleCheckboxState: toggleCheckboxState,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckboxState;

  TaskCheckBox({required this.checkBoxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (value) => toggleCheckboxState(value),
      value: checkBoxState,
    );
  }
}
