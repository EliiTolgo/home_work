import 'package:equatable/equatable.dart';

class TaskModel {
  final String title;
  final DateTime taskDate;
  bool? isDone;

  TaskModel({required this.taskDate, required this.title, this.isDone = false});

  @override
  List<Object?> get props => [title, taskDate];
}

class TaskManger {
  final List<TaskModel> _tasks = [];
  List<TaskModel> get tasks => _tasks;
  void addTask(String title) {
    _tasks.add(TaskModel(title: title, taskDate: DateTime.now()));
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
  }

  void completTask(TaskModel task) {
    task.isDone = true;
  }

  void unCompletTask(TaskModel task) {
    task.isDone = false;
  }
}
