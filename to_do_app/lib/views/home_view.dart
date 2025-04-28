import 'package:flutter/material.dart';
import 'package:to_do_app/cubit/task_cubit/task_state.dart';
import 'package:to_do_app/model/task_model.dart';
import 'package:to_do_app/style/app_color.dart';
import '../cubit/task_cubit/task_cubit.dart';
import '../widget/no_Task_body.dart';
import '../widget/task_bottom_navigation_bar.dart';
import '../widget/task_list_viwe.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final TaskManger taskManger = TaskManger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text('My Taske', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state is taskInitialState) {
            return NoTaskBody();
          } else if (state is taskUpdateState) {
            return TaskListViwe();
          } else {
            return Text('opps there was an error , try leter');
          }
        },
      ),
      bottomNavigationBar: TaskBottomNavigationBar(),
    );
  }
}
