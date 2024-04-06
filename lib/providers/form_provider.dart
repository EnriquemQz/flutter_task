import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/models.dart';
// import 'package:flutter_tasks/models/task_detail_model.dart';

class FormProvider extends ChangeNotifier {
  GlobalKey<FormState> registerFormKey =  GlobalKey<FormState>();

  TaskDetailModel taskData = TaskDetailModel();

  void depositeTask(TaskDetailModel task){
    taskData = task;
    notifyListeners();
  }

  // Cargar Fecha al Modelo para enviar datos a la api
  set selectedDate(DateTime date){
    taskData.dueDate = date;
    notifyListeners();
  }

  // eliminamos los datos del modelo al regresar del formulario
  void cleanModel(){
    taskData = TaskDetailModel();
    notifyListeners();
  }

  //Validamos el formulario
  validateForm(){
    return registerFormKey.currentState?.validate() ?? false;
  }
  
}