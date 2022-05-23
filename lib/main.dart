// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/task_data.dart';
import 'package:flutter_playground/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blueGrey.shade900,
          accentColor: Colors.amber,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
