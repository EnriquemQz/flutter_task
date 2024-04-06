import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/screens/task_details_screen/task_details_widgets/task_details_widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ApiProvider>().taskDetailModel;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Detalles Tarea'),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.textWhiteColor,
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
                fontSize: 15.0,
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
          DataDetailWidget( title: 'Descripción', data: provider.description),
          DataDetailWidget(title: 'Comentarios', data: provider.comments),
          DataDetailWidget(title: 'Etiqueta', data: provider.tags),
          
          ListTile(
            title: const Text(
              'Status: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              ),
            ),
            subtitle: Text(
              provider.isCompleted == 1
              ? 'Realizado'
              : 'Por Realizar',
              style: TextStyle(
                color: provider.isCompleted == 1 ? AppColors.primaryColor : AppColors.dangerColor
              ),
            ),
          ),          
        ],
      )
    );
  }
}