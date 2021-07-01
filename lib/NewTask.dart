

import 'package:flutter/cupertino.dart';

class NewTask extends StatefulWidget {
}


  @override
  _NewTaskState createState() {  _NewTaskState();
  }
  class _NewTaskState extends State<NewTask>{
  String taskTitle;
    bool isComplete=false;
    addTask(){
      if (key.currentState.validate()){
      key.currentState.save();
      Task task=Task(title:taskTitle,isCompleted:isComplete);
      print(task.title);
      Navigator.of(context).pop(task);
      }
      else {
      return;
      }
      }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }


