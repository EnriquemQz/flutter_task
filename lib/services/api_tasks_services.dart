

import 'dart:convert';
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

  Future<TaskDetailModel> getTaskDetail(String id) async {
    try {

      Uri uri = Uri.parse('${baseUrl.getTasks}/$id').replace(
        queryParameters: ApiParams.receiveParams()
      );

      final response = await http.get(
        uri,
        headers: Interceptors.authHeaders()
      );
      
      if (response.statusCode == 200) {
        final responseData = taskDetailModelFromJson(response.body).first;
        return responseData;
      } else {
        throw Exception('No se encontraron Tareas');
      }

    } catch (e) {
      throw Exception('Error al obtener detalles Tarea: $e');
    }
  }

  /* 
  ---------------------------
  Post, Put. Functions
  ---------------------------
  */

  postNewTask(Map<String, dynamic> json) async {
    try {

      Uri uri = Uri.parse(baseUrl.getTasks).replace(
        queryParameters: ApiParams.depositParams(
          json
        )
      );

      final response = await http.post(
        uri,
        headers: Interceptors.authTypeHeaders()
      );

      if(response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        String detail = responseData['detail'];
        return detail;
      }

      
    } catch (e) {
      throw Exception('Error al Guardar Tarea: $e');
    }
  }

  editTask(Map<String, dynamic> json, String id) async {
    try {

      Uri uri = Uri.parse('${baseUrl.getTasks}/$id').replace(
        queryParameters: ApiParams.depositParams(
          json
        )
      );

      final response = await http.put(
        uri,
        headers: Interceptors.authTypeHeaders()
      );

      if(response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        String detail = responseData['detail'];
        return detail;
      }

    } catch (e) {
      throw Exception('Error al Guardar Tarea: $e');
    }
  }

  /* 
  ---------------------------
  Delete Function
  ---------------------------
  */

  deleteTask(String id){
    try {

      Uri uri = Uri.parse('${baseUrl.getTasks}/$id').replace(
        queryParameters: ApiParams.receiveParams()
      );

      final response = http.delete(
        uri,
        headers: Interceptors.authHeaders()
      );

      return response;
      
    } catch (e) {
      throw Exception('Error al Eliminar Tarea: $e');
    }
  }

  }
