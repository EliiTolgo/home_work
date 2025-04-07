import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';
import '../models/question.dart';
import '../widgets/question_control.dart';
import '../widgets/question_item.dart';

class QuestionView extends StatefulWidget {
  QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

List<Question> question = [
  Question(
    image: Assets.imageQindex,
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    correctAnswer: 'Strongly satisfied',
  ),
  Question(
    image: Assets.imageQ2Index,
    question: 'What vitamins do you take?',
    options: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
    correctAnswer: 'Vitamin D3',
  ),
];

class _QuestionViewState extends State<QuestionView> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/GRADINET.png'),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0A0E26), Color(0xff1B1E2A)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: question.length,
                itemBuilder:
                    (context, index) =>
                        QuestionItem(question: question, questionIndex: index),
              ),
            ),

            QuestionControl(
              next:
                  () => _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
              back:
                  () => _controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
