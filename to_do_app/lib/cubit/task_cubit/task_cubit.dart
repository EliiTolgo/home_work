import 'package:to_do_app/cubit/task_cubit/task_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/model/task_model.dart';

class TaskCubit extends Cubit<TasksState> {
  TaskCubit() : super(TasksInitial());

  final TaskManger taskManger = TaskManger();
  void addTask(String title) {
    emit(TasksLoading());
    try {
      taskManger.addTask(title);
      emit(TasksSuccess(tasks: taskManger.tasks));
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void removeTaske(TaskModel task) {
    emit(TasksLoading());
    try {
      //throw Exception('Failed to remove take');
      taskManger.removeTask(task);
      emit(TasksSuccess(tasks: taskManger.tasks));
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void completTask(TaskModel task) {
    emit(TasksLoading());
    try {
      taskManger.completTask(task);
      emit(TasksSuccess(tasks: taskManger.tasks));
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }

  void unCompletTask(TaskModel task) {
    emit(TasksLoading());
    try {
      taskManger.unCompletTask(task);
      emit(TasksSuccess(tasks: taskManger.tasks));
    } catch (e) {
      emit(TasksFailure(errMessage: e.toString()));
    }
  }
}
