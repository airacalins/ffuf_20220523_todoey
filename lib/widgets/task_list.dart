// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: ((context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            return TaskTile(
              task: task,
              updateTask: (checkboxState) => taskData.updateTask(task),
              deleteTask: () => taskData.deleteTask(task),
            );
          },
          itemCount: taskData.taskCount,
        );
      }),
    );
  }
}
