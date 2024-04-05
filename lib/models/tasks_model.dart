import 'dart:convert';

List<TasksModel> tasksModelFromJson(String str) => List<TasksModel>.from(json.decode(str).map((x) => TasksModel.fromJson(x)));

String tasksModelToJson(List<TasksModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TasksModel {
    int id;
    String title;
    int isCompleted;
    DateTime dueDate;

    TasksModel({
        required this.id,
        required this.title,
        required this.isCompleted,
        required this.dueDate,
    });

    factory TasksModel.fromJson(Map<String, dynamic> json) => TasksModel(
        id: json["id"],
        title: json["title"],
        isCompleted: json["is_completed"],
        dueDate: DateTime.parse(json["due_date"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "is_completed": isCompleted,
        "due_date": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
    };
}
