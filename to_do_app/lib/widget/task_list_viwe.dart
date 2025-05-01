import 'package:flutter/material.dart';
import 'package:to_do_app/model/task_model.dart';
import 'package:to_do_app/widget/task_card.dart';

class TaskListViwe extends StatelessWidget {
  const TaskListViwe({super.key, required this.taskModel});
  final List<TaskModel> taskModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: taskModel.length,
        itemBuilder: (context, index) {
          return TaskCard(taskModel: taskModel[index]);
        },
      ),
    );
  }
}
