import 'package:equatable/equatable.dart' show Equatable;
import 'package:to_do_app/model/task_model.dart';

sealed class TasksState extends Equatable {
  const TasksState();

  @override
  List<Object> get props => [];
}

final class TasksInitial extends TasksState {}

final class TasksLoading extends TasksState {}

final class TasksSuccess extends TasksState {
  final List<TaskModel> tasks;

  const TasksSuccess({required this.tasks});

  @override
  List<Object> get props => [tasks];
}

final class TasksFailure extends TasksState {
  final String errMessage;

  const TasksFailure({required this.errMessage});

  @override
  List<Object> get props => [errMessage];
}
