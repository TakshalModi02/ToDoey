import 'package:flutter/cupertino.dart';

class Task {
  String title;
  bool tick;

  Task({required this.title, this.tick = false});

  void changeTick(){
    tick = !tick;
  }
}


