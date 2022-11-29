import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoey/widgets/task_list.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key, required this.addTaskcallBack});

  final Function addTaskcallBack;

  @override
  Widget build(BuildContext context) {
    late String newtasktitle;
    return Container(
      color: Color(
          0xff757575), // now to get the curved bottom sheet we have made a container of color grey that comes when we open the container and inside the container we have another container with white background and curved radius so when we open the bottom sheet we can see curved edges and in the spaces of curves we can see the background color same to all screen color
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtext) {
                newtasktitle = newtext;
              },
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent)),
              onPressed: () {
                addTaskcallBack(newtasktitle);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
