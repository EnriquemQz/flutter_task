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

  set selectedDate(DateTime date){
    taskData.dueDate = date;
    notifyListeners();
  }

  void cleanModel(){
    taskData = TaskDetailModel();
    notifyListeners();
  }

  validateForm(){
    return registerFormKey.currentState?.validate() ?? false;
  }
  
}