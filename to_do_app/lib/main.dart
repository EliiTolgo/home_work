import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
