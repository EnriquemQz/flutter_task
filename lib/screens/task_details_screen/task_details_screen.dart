import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/tasks_screen/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:flutter_tasks/screens/add_task_screen/add_task_screen.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ApiProvider>().taskDetailModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles Tarea'),
        actions: [
          IconButton(
            onPressed: (){
              context.read<ApiProvider>().deleteTask(provider.id.toString());
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TasksScreen())
              );
            }, 
            icon: const Icon(Icons.delete_forever, color: Colors.red)
          ),
          IconButton(
            onPressed: (){
              context.read<FormProvider>().depositeTask(provider);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const AddTaskScreen())
              );
            }, 
            icon: const Icon(Icons.edit, color: Colors.green)
          )
        ],
      ),
      body: Center(
        child: Text(provider.comments),
      ),
    );
  }
}