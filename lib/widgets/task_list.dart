import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({super.key, required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          TaskTitle: widget.tasks[index].name,
          checkboxCallback: (bool value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      }),
      itemCount: widget.tasks.length,
    );
  }
}
