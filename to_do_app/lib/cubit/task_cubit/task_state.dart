import 'package:to_do_app/model/task_model.dart';

class TaskState {}

class taskInitialState extends TaskState {}

class taskUpdateState extends TaskState {
  final TaskModel taskModel;

  taskUpdateState({required this.taskModel});
}

class taskFiluerState extends TaskState {}
