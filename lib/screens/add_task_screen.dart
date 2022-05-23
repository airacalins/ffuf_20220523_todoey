// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey.shade900,
              fontSize: 30,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            controller: titleController,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => addTaskCallback(titleController.text),
            child: Text('Add'),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
