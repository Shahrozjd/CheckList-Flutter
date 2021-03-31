import 'package:flutter/material.dart';
import 'package:checklist/widgets/TaskTile.dart';

import 'package:checklist/models/Tasks.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    List<Tasks> tasks = [
      Tasks(name: "Buy milk"),
      Tasks(name: "Buy eggs"),
      Tasks(name: "Buy bread"),
    ];

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            ischecked: tasks[index].isDone,
            title: tasks[index].name,
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
