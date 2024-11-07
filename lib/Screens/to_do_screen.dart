import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/Provider/to_do_provider.dart';
import 'package:todo_api/widget/addToDo.dart';
class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<ToDoProvider>(
             builder: (context, provider, child) {
               final todoProvider = provider.toDoModel;
              if(todoProvider == null){
             provider.fetchData();
            return Center(child: CircularProgressIndicator());
              }else{
              return ListView.builder(
           itemBuilder: (context, index) {
           final v1 = todoProvider.todo;
           final v2 = todoProvider.totalTasks;
         return Addtodo(
           todo: v1.elementAt(index) ,
           totalTasks: provider.toDoModel!.totalTasks ,
         );
        },
           itemCount: todoProvider.totalTasks ,
           );
     }

      },

    );
  }
}
