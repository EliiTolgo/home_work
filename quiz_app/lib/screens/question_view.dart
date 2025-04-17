import 'package:flutter/material.dart';
import '../models/question.dart';
import '../widgets/question_control.dart';
import '../widgets/question_item.dart';

class QuestionView extends StatefulWidget {
  QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  final _controller = PageController();
  late QuestionsManger questionsManger = QuestionsManger();
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
                itemCount: questionsManger.questions.length,
                itemBuilder:
                    (context, index) => QuestionItem(
                      question: questionsManger.questions,
                      questionIndex: index,
                      questionsManger: questionsManger,
                    ),
              ),
            ),

            QuestionControl(
              next: () {
                if (_controller.page!.toInt() <
                    questionsManger.questions.length - 1) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text('Quiz Completed'),
                          content: Text(
                            'Your score is ${questionsManger.calculateTotalScore()}',
                          ),
                        ),
                  );
                }
              },
              back:
                  () => _controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
