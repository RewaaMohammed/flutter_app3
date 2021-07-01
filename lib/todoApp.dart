
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app3/taskRepo.dart';

class todoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: context){
          return NewTask();
          }));

        })],
      ),

      body: Container(
        child: ListView.builder(
          itemCount: TaskRepository.tasks.length,
            itemBuilder:(context,index){
              return TaskWidget(tasks[index]);
            }),
      ),

    );
  }

}