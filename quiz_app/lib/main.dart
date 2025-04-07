import 'package:flutter/material.dart';
import 'package:quiz_app/Styles/app_text_styles.dart';

import 'screens/home_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppTextStyles.fontFamily),
      home: HomeView(),
    );
  }
}
