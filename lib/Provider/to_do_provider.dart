import 'package:flutter/material.dart';
import 'package:todo_api/Models/to_do_model.dart';
import 'package:todo_api/Services/to_do_services.dart';

class ToDoProvider extends ChangeNotifier {
ToDoModel ?toDoModel;

    Future<void>fetchData() async{
       toDoModel= await ToDoServices.getServices();
      notifyListeners();
   }

   Future<void>addToDo(String newToDo)async{
   ToDoServices.Post(newToDo);
   toDoModel?.todo.add({"todo": newToDo});
   toDoModel?.totalTasks +=1;
   notifyListeners();

   }


}

