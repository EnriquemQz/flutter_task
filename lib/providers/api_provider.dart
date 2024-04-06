import 'package:flutter/material.dart';
import 'package:flutter_tasks/models/task_detail_model.dart';
import 'package:flutter_tasks/models/tasks_model.dart';
import 'package:flutter_tasks/services/api_tasks_services.dart';

class ApiProvider extends ChangeNotifier {

   List<TasksModel> taskList = [];
   TaskDetailModel taskDetailModel = TaskDetailModel();

    // Con este constructor inicializamos el llamado a la api al cargar la app
   ApiProvider(){
    getAllTasks();
   }

  /* 
  -----------------------------
    Get Functions
  -----------------------------
  */
  
  getAllTasks() async {
    final response = await ApiTasksServices.api.getAllTasks();
    taskList = [...response];
    notifyListeners();
  }

  getDetailsTasks(String id) async {
    final response = await ApiTasksServices.api.getTaskDetail(id);
    taskDetailModel = response;
    notifyListeners();
  }

  /* 
  -----------------------------
    Post and Edit Functions 
  -----------------------------
  */

  postNewTask(Map<String, dynamic> json) async {
    
    await ApiTasksServices.api.postNewTask(json);
    getAllTasks();

  }

  editTask(Map<String, dynamic> json, String id) async {
    await ApiTasksServices.api.editTask(json, id);
    getAllTasks();
  }

  /* 
  -----------------------------
    Delete Function
  -----------------------------
  */

  deleteTask(String id) async {
    await ApiTasksServices.api.deleteTask(id);
    getAllTasks();
  }

}