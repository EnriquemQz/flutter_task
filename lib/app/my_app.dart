import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/tasks_screen/tasks_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // removemos el banner de debug
      title: 'Material App',
      home: TasksScreen()
    );
  }
}