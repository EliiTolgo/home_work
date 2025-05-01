import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubit/task_cubit/task_cubit.dart';

import '../style/app_color.dart';

class TaskBottomNavigationBar extends StatefulWidget {
  const TaskBottomNavigationBar({super.key});

  @override
  State<TaskBottomNavigationBar> createState() =>
      _TaskBottomNavigationBarState();
}

class _TaskBottomNavigationBarState extends State<TaskBottomNavigationBar> {
  String title = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: BottomAppBar(
          color: AppColor.backgroundColor,
          shadowColor: Colors.black,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: TextField(
                    onChanged: (title) {
                      this.title = title;
                    },
                    decoration: InputDecoration(
                      hintText: 'Add a new task...',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: AppColor.textFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.Lightgray,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    BlocProvider.of<TaskCubit>(context).addTask(title);
                  },
                  icon: Icon(Icons.add, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
