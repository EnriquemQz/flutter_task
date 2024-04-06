import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/api_provider.dart';
import 'package:flutter_tasks/screens/tasks_screen/tasks_screen_widgets/tasks_screen_widgets.dart';

class ShowTasks extends StatelessWidget {
  const ShowTasks({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<ApiProvider>(
      builder: (context, provider, child){
        return provider.taskList.isNotEmpty
          ? const SliverListTasksWidget()
          : const SliverboxNoTasksWidget();
      }
    );
  }
}