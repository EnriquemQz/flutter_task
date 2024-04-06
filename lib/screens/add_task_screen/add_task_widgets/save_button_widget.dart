import 'package:flutter/material.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:provider/provider.dart';

class SaveButtonWidget extends StatelessWidget {
  final bool hasData;
  const SaveButtonWidget({super.key, required this.hasData});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(hasData ? 'Editar' : 'Guardar'),
      onPressed: (){
        hasData
        ? context.read<ApiProvider>().editTask(
           context.read<FormProvider>().taskData.toJson(),
           context.read<FormProvider>().taskData.id.toString()
          )
        : context.read<ApiProvider>().postNewTask(
            context.read<FormProvider>().taskData.toJson()
          );
        Navigator.pop(context);
      }
    );
  }
}