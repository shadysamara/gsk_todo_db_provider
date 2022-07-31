import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/models/task_model.dart';
import 'package:todo_db_provider/providers/db_provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;

  TaskWidget(this.taskModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DbProvider>(
      builder: (context,provider,x) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: CheckboxListTile(
            secondary: IconButton(onPressed: () {
              provider
                      .deleteTask(taskModel);
           
            }, icon: Icon(Icons.delete)),
            value: taskModel.isComplete,
            onChanged: (v) {
              provider.updateTask(taskModel);
            },
            title: Text(taskModel.title!),
          ),
        );
      }
    );
  }
}
