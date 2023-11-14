import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'task_list_screen.dart';
import 'add_task_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
   await Parse().initialize(
    '6zqU0j1k8iVxahsoSNYAQpDOp2tRU3v8MHYXX2Dh',
    'https://parseapi.back4app.com/parse',
    clientKey: '2JGY1sESDOD1HdUPjKPd3cwgONGfIK4RcdwWyMoi',
  );

  runApp(MyApp());
}


  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskListScreen(),
      routes: {
        '/addTask': (context) => AddTaskScreen(),
      },
    );
  }
}



