import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:todo_api/Models/to_do_model.dart';
class ToDoServices {
  static Dio dio = new Dio();
  static Map postData ={'todo' :"" ,'completed':false , 'userId':1 };
  static Future<ToDoModel>getServices() async{
     String url = "https://dummyjson.com/todos/user/13";
     try{
       var respose = await dio.get(url);
       if(respose.statusCode == 200){
         return ToDoModel.formjson(respose.data);
       }else{
         throw Exception("Failed to load task details");
       }
     }catch(e){
       throw Exception("Error $e");
     }
  }

  static Future<void>Post(String addToDo) async{
    postData['todo'] = addToDo;   ///////////////////
    String url = 'https://dummyjson.com/todos/add';
    dio.post(url ,
    data:postData

  );
  }
}
