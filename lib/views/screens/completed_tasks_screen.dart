import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/db_provider.dart';
import 'package:todo_db_provider/views/widgets/task_widget.dart';


class CompleteTasksScreen extends StatelessWidget {
 
  CompleteTasksScreen();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
    Consumer<DbProvider>(
      builder: (context,provider,x) {
        return provider.completeTasks.isEmpty?
        Center(child: Text('Empty'),):
        ListView.builder(
            itemCount: provider.completeTasks
                    .length,
            itemBuilder: (context, index) {
              return TaskWidget(
                  provider.completeTasks
                        [index],
                  );
            });
      }
    );
  }
}
