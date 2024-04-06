import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/task_detail_model.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';

import '../../add_task_screen/add_task_screen.dart';

class EditButtonWidget extends StatelessWidget {
  final TaskDetailModel taskModel;
  const EditButtonWidget({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        context.read<FormProvider>().depositeTask(taskModel);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const AddTaskScreen())
          );
        }, 
        icon: const Icon(Icons.edit, color: Colors.green)
      );
  }
}