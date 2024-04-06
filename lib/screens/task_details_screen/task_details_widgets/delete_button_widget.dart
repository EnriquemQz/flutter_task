import 'package:flutter/material.dart';
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/providers/api_provider.dart';
import 'package:provider/provider.dart';

import '../../tasks_screen/tasks_screen.dart';

class DeleteButtonWidget extends StatelessWidget {
  final String id;
  const DeleteButtonWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        showDialog(
          context: context,
          builder: (_){
            return AlertDialog(
              title:  const Text('¿Desea eliminar Tarea?'),
              content: const Text(
                'Se eliminara y no podras volver a visualizarla',
              ),
              actions: [
                TextButton(
                  onPressed:(){
                    Navigator.of(context).pop();
                  }, 
                  child: const Text('Cancelar')
                ),
                TextButton(
                  onPressed: (){
                    context.read<ApiProvider>().deleteTask(id);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const TasksScreen())
                    );
                  }, 
                  child: const Text('Aceptar')
                )
              ],
            );
          }
        );
      }, 
      icon: const Icon(Icons.delete_forever, color: AppColors.dangerColor)
    );
  }
}