import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/task_detail_model.dart';
import 'package:flutter_tasks/models/tasks_model.dart';
import 'package:flutter_tasks/services/api_tasks_services.dart';

class ApiProvider extends ChangeNotifier {

   List<TasksModel> taskList = [];
   List<TaskDetailModel> taskDetailList = [];

  getAllTasks() async {
    final response = await ApiTasksServices.api.getAllTasks();
    taskList = [...response];
    notifyListeners();
  }

}