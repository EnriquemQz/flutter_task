
import 'package:flutter_tasks/constants/constants.dart';
import 'package:flutter_tasks/models/task_detail_model.dart';
import 'package:flutter_tasks/models/tasks_model.dart';
import 'package:flutter_tasks/services/api_params.dart';
import 'package:flutter_tasks/services/interceptors.dart';
import 'package:http/http.dart' as http;

class ApiTasksServices {
  static final ApiTasksServices api = ApiTasksServices._();
  ApiTasksServices._();
  AppUrls baseUrl = AppUrls();

  /* 
  ---------------------------
  Get Functions
  ---------------------------
  */
  
  Future<List<TasksModel>> getAllTasks() async {
    try {
      // Uri uri = Uri.parse('${baseUrl.getAllTasks}?token=$token');
      Uri uri = Uri.parse(baseUrl.getTasks).replace(
        queryParameters: ApiParams.receiveParams()
      );

      final response = await http.get(
        uri,
        headers: Interceptors.authHeaders()
      );

      if(response.statusCode == 200){
        final responseData = tasksModelFromJson(response.body);
        return responseData;
      } else {
        return [];
      }

    } catch (e) {
      throw Exception('Error al obtener Tareas: $e');
    }
  }

  Future<List<TaskDetailModel>> getTaskDetail() async {
    try {

      Uri uri = Uri.parse(baseUrl.getTasks).replace(
        queryParameters: ApiParams.receiveParams()
      );

      final response = await http.get(
        uri,
        headers: Interceptors.authHeaders()
      );
      
      if (response.statusCode == 200) {
        final responseData = taskDetailModelFromJson(response.body);
        return responseData;
      } else {
        return [];
      }

    } catch (e) {
      throw Exception('Error al obtener detalles Tarea: $e');
    }
  }

  /* 
  ---------------------------
  Post, Put Functions
  ---------------------------
  */

  postNewTask(String title, String isCompleted, String dueDate, String comments, String description, String tags) async {
    try {

      Uri uri = Uri.parse(baseUrl.getTasks).replace(
        queryParameters: ApiParams.depositParams(
          title, 
          isCompleted, 
          dueDate, 
          comments, 
          description, 
          tags
        )
      );

      final response = http.post(
        uri,
        headers: Interceptors.authTypeHeaders()
      );

      return response;
      
    } catch (e) {
      throw Exception('Error al Guardar Tarea: $e');
    }
  }


}