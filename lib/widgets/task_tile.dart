import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final Function checkboxCallback;

  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.TaskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
