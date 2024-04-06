import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/task_details_screen/task_details_widgets/task_details_widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ApiProvider>().taskDetailModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles Tarea'),
        actions: [
          DeleteButtonWidget(id: provider.id.toString()),
          EditButtonWidget(taskModel: provider)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              provider.dueDate.toString().substring(0, 10),
              style: const TextStyle(
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            child: Text(
              provider.title,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Descipción',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(provider.description),
          ),
          ListTile(
            title: const Text(
              'Comentarios',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(provider.comments),
          ),
          ListTile(
            title: const Text(
              'Etiqueta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(provider.tags),
          ),
          
        ],
      )
    );
  }
}