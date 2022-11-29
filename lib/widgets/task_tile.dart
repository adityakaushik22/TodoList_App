import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final Function checkboxCallback;
  final Function longpressCallback;

  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.TaskTitle,
      required this.checkboxCallback,
      required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: (() => longpressCallback()),
        title: Text(
          TaskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          // onChanged: (bool? value) => toggleCheckbox(value!),
          onChanged: (bool? value) => checkboxCallback(value),
        ));
  }
}
