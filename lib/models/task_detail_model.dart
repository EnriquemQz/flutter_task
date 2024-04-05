import 'dart:convert';

List<TaskDetailModel> taskDetailModelFromJson(String str) => List<TaskDetailModel>.from(json.decode(str).map((x) => TaskDetailModel.fromJson(x)));

String taskDetailModelToJson(List<TaskDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskDetailModel {
    int id;
    String title;
    int isCompleted;
    DateTime dueDate;
    String comments;
    String description;
    String tags;
    String token;
    DateTime createdAt;
    DateTime updatedAt;

    TaskDetailModel({
        required this.id,
        required this.title,
        required this.isCompleted,
        required this.dueDate,
        required this.comments,
        required this.description,
        required this.tags,
        required this.token,
        required this.createdAt,
        required this.updatedAt,
    });

    factory TaskDetailModel.fromJson(Map<String, dynamic> json) => TaskDetailModel(
        id: json["id"],
        title: json["title"],
        isCompleted: json["is_completed"],
        dueDate: DateTime.parse(json["due_date"]),
        comments: json["comments"],
        description: json["description"],
        tags: json["tags"],
        token: json["token"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "is_completed": isCompleted,
        "due_date": "${dueDate.year.toString().padLeft(4, '0')}-${dueDate.month.toString().padLeft(2, '0')}-${dueDate.day.toString().padLeft(2, '0')}",
        "comments": comments,
        "description": description,
        "tags": tags,
        "token": token,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
