import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final void Function(bool?) checkboxCallback;
  final void Function()? deleteTask;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.deleteTask})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
