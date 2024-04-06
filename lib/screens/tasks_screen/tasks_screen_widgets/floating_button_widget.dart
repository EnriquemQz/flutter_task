import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/screens/add_task_screen/add_task_screen.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const AddTaskScreen())
        );
      },
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.textWhiteColor,
      child: const Icon(Icons.add),
    );
  }
}