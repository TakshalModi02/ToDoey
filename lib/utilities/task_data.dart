import 'package:flutter/foundation.dart';

import '../modules/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Buy Bread'),
    Task(title: 'Buy Jam'),
    Task(title: 'Buy Butter'),
  ];

  int get taskCount{
    return tasks.length;
  }

  List<Task> get tasks{
    return _tasks;
  }

  void addTask(String newTask){
    Task t = new Task(title: newTask);
    _tasks.add(t);
    notifyListeners();
  }

  void changeTick(int index, bool value){
    _tasks[index].tick = value;
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}