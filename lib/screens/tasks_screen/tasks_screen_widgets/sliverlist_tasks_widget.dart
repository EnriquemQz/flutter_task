import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/screens/task_details_screen/task_details_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';

class SliverListTasksWidget extends StatelessWidget {
  const SliverListTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tasksList = context.watch<ApiProvider>().taskList;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i){
          final item = tasksList[i];
          return GestureDetector(
            onTap: (){
              context.read<ApiProvider>().getDetailsTasks(item.id.toString());
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const TaskDetailsScreen())
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.textWhiteColor,
                  borderRadius: BorderRadius.circular(18.0)
                ),
                child: ListTile(
                  title: Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: AppColors.textTitleColor
                    ),
                  ),
                  trailing: Icon(
                    tasksList[i].isCompleted == 0
                      ? Icons.cancel_outlined
                      : Icons.done_outline_rounded,
                    color: tasksList[i].isCompleted == 0
                      ? AppColors.dangerColor
                      : AppColors.primaryColor
                  ),
                  subtitle: Text(
                    'Fecha: ${item.dueDate.toString().substring(0, 10)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        childCount: tasksList.length
      ),
    );
  }
}