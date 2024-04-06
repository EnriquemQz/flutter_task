import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tasks/providers/providers.dart';
import 'package:flutter_tasks/screens/add_task_screen/add_task_widgets/add_task_widgets.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modelTask = context.read<FormProvider>().taskData;
    bool hasData = false;
    if(modelTask.id != null) {
      hasData = true;
    }
    return PopScope(
      canPop: true,
      onPopInvoked: (pop) {
        context.read<FormProvider>().cleanModel();
      }, 
      child: Scaffold(
        appBar: AppBar(
          title: Text( hasData ? 'Editar Tarea' : 'Agregar Tarea'),
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TitleFormWidget(),
                  const DescriptionFormWidget(),
                  const CommentsFormWidget(),
                  const DateFormWidget(),
                  const TagsFormWidget(),
                  const IsCompletedTaskWidget(),
                  SaveButtonWidget(hasData: hasData)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}