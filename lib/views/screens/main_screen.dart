import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_db_provider/views/screens/all_tasks_screen.dart';
import 'package:todo_db_provider/views/screens/completed_tasks_screen.dart';
import 'package:todo_db_provider/views/screens/incomplete_tasks_screen.dart';
import 'package:todo_db_provider/views/screens/new_task_screen.dart';

class MainTodoPage extends StatefulWidget {
  @override
  State<MainTodoPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainTodoPage>
    with SingleTickerProviderStateMixin {



  TabController? tabController;
  initTabBar() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTabBar();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo app'),
        bottom: TabBar(controller: tabController!, tabs: const [
          Tab(
            icon: Icon(Icons.list),
          ),
          Tab(
            icon: Icon(Icons.done),
          ),
          Tab(
            icon: Icon(Icons.cancel),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) =>
                      NewTaskScreen())));
        },
      ),
      body: TabBarView(controller: tabController!, children: [
        AllTasksScreen(),
        CompleteTasksScreen(),
        InCompleteTasksScreen()
      ]),
    );
  }
}
