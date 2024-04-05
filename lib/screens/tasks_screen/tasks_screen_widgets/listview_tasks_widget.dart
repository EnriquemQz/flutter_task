import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/api_privider.dart';
import 'package:provider/provider.dart';

class ListViewTasksWidget extends StatelessWidget {
  const ListViewTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tasksList = context.read<ApiProvider>().taskList;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i){
          final item = tasksList[i];
          return ListTile(
            title: Text(
              item.title,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.blue
              ),
            ),
            subtitle: Text(
              item.dueDate.toString()
            ),
          );
        },
        childCount: tasksList.length
      ),
    );
  }
}