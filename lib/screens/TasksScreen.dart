import 'package:checklist/screens/AddTaskScreen.dart';
import 'package:checklist/widgets/TaskList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE766A),
      appBar: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Color(0xFFFE766A),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Icon(
                    Icons.list,
                    size: 60,
                    color: Color(0xFFFE766A),
                  ),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFEE4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "CheckList",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "9 Task",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color(0xFFFFFEE4)),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}



