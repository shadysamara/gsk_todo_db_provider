import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/db_provider.dart';
import 'package:todo_db_provider/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {

  AllTasksScreen();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<DbProvider>(
      builder: (context,provider,x) {
        return ListView.builder(
            itemCount: provider.allTasks.length,
            itemBuilder: (context, index) {
              return TaskWidget(provider.allTasks[index]);
            });
      }
    );
  }
}
