import 'package:flutter/material.dart';
import 'package:checklist/models/Tasks.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String title;
  final Function checkboxCallback;

  TaskTile({this.ischecked, this.title, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle( decoration: ischecked ? TextDecoration.lineThrough :  null ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFFFE766A),
        value: ischecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

