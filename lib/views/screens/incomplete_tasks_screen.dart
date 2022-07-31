import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/models/task_model.dart';
import 'package:todo_db_provider/providers/db_provider.dart';
import 'package:todo_db_provider/views/widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  InCompleteTasksScreen();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Selector<DbProvider, List<TaskModel>>(
      selector: (context, provider) {
      return provider.inCompleteTasks;
    }, builder: (context, returnedVariableFromSelector, x) {
      return ListView.builder(
          itemCount: returnedVariableFromSelector.length,
          itemBuilder: (context, index) {
            return TaskWidget(
             returnedVariableFromSelector[index],
            );
          });
    });
  }
}
