class TaskModel {
  final String task;
  final DateTime taskDate;
  bool? isDone;

  TaskModel({required this.taskDate, required this.task, this.isDone = false});
}

class TaskManger {
  final List<TaskModel> tasks = [];

  List<TaskModel> AddTask(TaskModel task) {
    tasks.add(task);
    return tasks;
  }

  List<TaskModel> RemoveTask(TaskModel task) {
    tasks.remove(task);
    return tasks;
  }

  void CompletTask(TaskModel task) {
    task.isDone = true;
  }
}
