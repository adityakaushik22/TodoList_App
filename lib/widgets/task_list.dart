import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            return TaskTile(
              longpressCallback: () {
                TaskData.deleteTask(TaskData.tasks[index]);
              },
              isChecked: TaskData.tasks[index].isDone,
              TaskTitle: TaskData.tasks[index].name,
              checkboxCallback: (checkBoxState) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
            );
          }),
          itemCount: TaskData.taskCount,
        );
      },
    );
  }
}
