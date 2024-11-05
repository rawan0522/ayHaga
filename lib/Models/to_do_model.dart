import 'package:flutter/material.dart';
class ToDoModel {
List<Map<String , dynamic>>todo;
int totalTasks;
ToDoModel({required this.todo , required this.totalTasks});

factory ToDoModel.formjson(Map<String , dynamic>json){
    return ToDoModel(
        todo: json["todos"],
        totalTasks: json["total"]
    );
}

}
