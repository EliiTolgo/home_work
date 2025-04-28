import 'package:to_do_app/cubit/task_cubit/task_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(taskInitialState());
}
