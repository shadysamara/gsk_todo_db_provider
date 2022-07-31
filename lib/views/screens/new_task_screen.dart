import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/data/db_helper.dart';
import 'package:todo_db_provider/models/task_model.dart';
import 'package:todo_db_provider/providers/db_provider.dart';

class NewTaskScreen extends StatelessWidget {
  String content = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              onChanged: (v) {
                content = v;
              },
            ),
            ElevatedButton(
                onPressed: () async {
                  TaskModel taskModel = TaskModel(title: content);
                  await Provider.of<DbProvider>(context, listen: false)
                      .createNewTask(taskModel);
                  Navigator.of(context).pop();
                },
                child: Text('Add New Task'))
          ],
        ));
  }
}
