import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/utilities/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  late String newTask ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(
            top: 30, left: 30, right: 30, bottom: 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style:
              TextStyle(color: Color(0xff63c9fe), fontSize: 30),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newTask = value;
              },
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTask);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.lightBlueAccent,
                child: const Text("Add", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
