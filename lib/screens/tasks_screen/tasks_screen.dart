import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/tasks_screen/tasks_screen_widgets/tasks_screen_widgets.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 241, 255),
      floatingActionButton: FloatingButtonWidget(),
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          ShowTasks()
        ],
      ),
    );
  }
}