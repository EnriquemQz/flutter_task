import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/models.dart';
// import 'package:flutter_tasks/models/task_detail_model.dart';

class FormProvider extends ChangeNotifier {

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
  
}