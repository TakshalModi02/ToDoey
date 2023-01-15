import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String title;
  bool tick;
  final onTap;
  final onLongPress;

  TaskTile({super.key, required this.title, required this.tick, required this.onTap, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20, decoration: tick?TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
        value: tick,
        onChanged: onTap,
      ),
        onLongPress: onLongPress ,
    );
  }
}


















