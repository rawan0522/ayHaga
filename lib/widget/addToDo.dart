import 'package:flutter/material.dart';
class Addtodo extends StatelessWidget {
   Addtodo({super.key , required this.todo , required this.totalTasks});
final Map todo;
final int totalTasks;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(builder:(context) {
            return Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text("Add ToDo" , style: TextStyle(
                        color: Colors.indigo[400],
                        fontSize: 30 , fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      textAlign: TextAlign.center,
                      autofocus: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 340,
                    height: 50,
                    child: MaterialButton(onPressed: () {},
                        color: Colors.teal[400],
                        child: Text("Add" , style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60), // Rounded corners
                          side: BorderSide(color: Colors.teal[700]!), //
                        )
                    ),
                  )],
              ),
            );
          } , isScrollControlled: true, context: context);
        },
        child: Icon(Icons.add , color: Colors.indigo,),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.teal[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80 , left: 20 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.playlist_add_check , color: Colors.white , size: 40,),
                Text("ToDayDo" ,style: TextStyle(color: Colors.white ,
                    fontSize: 40 ,
                    fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text("5 Tasks",style: TextStyle(color: Colors.white ,fontSize: 20),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:20, right: 20 , bottom: 30 , top:20 ),
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),

              ),
            ),

          ),

        ],
      ),
    );
  }
}
