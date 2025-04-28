import 'package:flutter/material.dart';
import 'package:to_do_app/widget/task_card.dart';

class TaskListViwe extends StatelessWidget {
  const TaskListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard();
        },
      ),
    );
  }
}
