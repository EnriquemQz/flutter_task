// To parse this JSON data, do
//
//     final taskDetailModel = taskDetailModelFromJson(jsonString);

import 'dart:convert';

List<TaskDetailModel> taskDetailModelFromJson(String str) => List<TaskDetailModel>.from(json.decode(str).map((x) => TaskDetailModel.fromJson(x)));

String taskDetailModelToJson(List<TaskDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskDetailModel {
    int? id;
    String title;
    int isCompleted;
    DateTime dueDate;
    String comments;
    String description;
    String? tags;
    String? token;
    DateTime? createdAt;
    DateTime? updatedAt;

    TaskDetailModel({
        this.id,
        this.title = '',
        this.isCompleted = 0,
        // this.dueDate,
        this.comments = '',
        this.description = '',
        this.tags,
        this.token,
        this.createdAt,
        this.updatedAt,
    }) : dueDate = DateTime.now();

    //dueDate: json["due_date"] != null ? DateTime.parse(json["due_date"]) : null,

    factory TaskDetailModel.fromJson(Map<String, dynamic> json) => TaskDetailModel(
        id: json["id"],
        title: json["title"],
        isCompleted: json["is_completed"],
        comments: json["comments"],
        description: json["description"],
        tags: json["tags"],
        token: json["token"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    )..dueDate = json["due_date"] != null ? DateTime.parse(json["due_date"]) : DateTime.now();

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "is_completed": isCompleted,
        "due_date": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
        "comments": comments,
        "description": description,
        "tags": tags,
        "token": token,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
