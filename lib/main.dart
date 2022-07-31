import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/data/db_helper.dart';
import 'package:todo_db_provider/providers/db_provider.dart';
import 'package:todo_db_provider/providers/test_provider.dart';
import 'package:todo_db_provider/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
      MultiProvider(
        providers: [
          ChangeNotifierProvider<DbProvider>(
      create: (context) {
        return DbProvider();
      },),
      
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: MainTodoPage(),
          
          ),
      );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Student>(context).name),
          Text(Provider.of<Student>(context).lname),
          ElevatedButton(onPressed: () {}, child: Text('Change name'))
        ],
      )),
    );
  }
}
