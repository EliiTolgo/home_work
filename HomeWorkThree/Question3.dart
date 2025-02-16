//Create a to-do list program using a List where each item has a description, due date, and
//completion status (as bool). Implement methods to add, remove, and update tasks, including the
//use of for-each loops.

import 'dart:io';

void main() {
  Task tasks = Task();

  print(
      'What process do you want? If it is an addition, write the word add, if it is a deletion, write the word remove, and if it is a print, write the word print ');
  String operation = stdin.readLineSync()!;
  switch (operation) {
    case 'add':
      print(' pless Enter yor new description');
      String description = stdin.readLineSync()!;
      tasks.description = description;
      print(' pless Enter yor new due date');
      String dueDate = stdin.readLineSync()!;
      tasks.dueDate = dueDate;
      print(' pless Enter yor new due date');
      bool completion = bool.parse(stdin.readLineSync()!);
      tasks.isCompleted = completion;
    case 'remove':
      tasks.description = null;
      tasks.dueDate = null;
      tasks.isCompleted = false;
    case 'update':
      tasks.isCompleted = true;
  }
}

class Task {
  String? description;
  String? dueDate;
  bool? isCompleted = false;
}
