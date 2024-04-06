import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/screens/tasks_screen/tasks_screen_widgets/tasks_screen_widgets.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
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