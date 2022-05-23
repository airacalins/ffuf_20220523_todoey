// ignore_for_file: prefer_final_fields

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task('Buy milk'),
    Task('Buy eggs'),
    Task('Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => tasks.length;

  void addTask(String name) {
    final task = Task(name);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
