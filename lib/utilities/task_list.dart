import 'package:flutter/material.dart';
import 'package:todoey/utilities/task_tile.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                  title: taskData.tasks[index].title,
                  tick: taskData.tasks[index].tick,
                  onTap: (value) {
                   Provider.of<TaskData>(context, listen: false).changeTick(index, value);
                  },
                  onLongPress: (){
                Provider.of<TaskData>(context, listen: false).deleteTask(index);
              },);
            },
            itemCount: taskData.taskCount,
          ),
        );
      },
    );
  }
}
