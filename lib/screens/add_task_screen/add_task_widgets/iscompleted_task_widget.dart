import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';


class IsCompletedTaskWidget extends StatelessWidget {
  const IsCompletedTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: CheckboxListTile(
        title: const Text('Realizada *'),
        value: context.watch<FormProvider>().taskData.isCompleted == 1,
        onChanged: (value){
          int newValue = 0;
          if(value == true) newValue = 1;
          context.read<FormProvider>().depositeTask(
            context.read<FormProvider>().taskData..isCompleted = newValue
          );
        }
      ),
    );
  }
}