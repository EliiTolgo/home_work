import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/cubit/task_cubit/task_cubit.dart';
import 'package:to_do_app/model/task_model.dart';
import 'package:to_do_app/style/app_color.dart';
import 'package:intl/intl.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 8, top: 8),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.taskCardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: Checkbox(
            value: taskModel.isDone,
            onChanged: (newValue) {
              if (newValue == true) {
                BlocProvider.of<TaskCubit>(context).completTask(taskModel);
              } else {
                BlocProvider.of<TaskCubit>(context).unCompletTask(taskModel);
              }
            },
          ),
          title: Text(
            taskModel.title,
            style: TextStyle(
              decoration:
                  taskModel.isDone == true ? TextDecoration.lineThrough : null,
            ),
          ),
          subtitle: Text(
            'Craeted : ${DateFormat('dd/MM/yyyy').format(taskModel.taskDate)}',
          ),
          trailing: IconButton(
            onPressed: () {
              BlocProvider.of<TaskCubit>(context).removeTaske(taskModel);
            },
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.delete_outlined, color: Colors.red, size: 20),
            ),
          ),
        ),
      ),
    );
  }
}
