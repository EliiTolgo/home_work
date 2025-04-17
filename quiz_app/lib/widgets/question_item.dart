import 'package:flutter/material.dart';
import '../Styles/app_text_styles.dart';
import '../models/question.dart';
import 'choice_item.dart';
import 'question_heder.dart';

class QuestionItem extends StatefulWidget {
  QuestionItem({
    super.key,
    required this.questionIndex,
    required this.question,
    required this.questionsManger,
  });

  final List<Question> question;
  final int questionIndex;
  final QuestionsManger questionsManger;
  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionHeder(
            imege: widget.question[widget.questionIndex].image,
            questionIndex: widget.questionIndex,
          ),
          SizedBox(height: 16),
          Text(
            widget.question[widget.questionIndex].question,
            style: AppTextStyles.medium24.copyWith(color: Colors.white),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.question[widget.questionIndex].options.length,
              itemBuilder: (context, index) {
                return ChoiceItem(
                  onTap: () {
                    setState(() {
                      widget.questionsManger.updateQuestionAnswer(
                        widget.questionIndex,
                        widget.question[widget.questionIndex].options[index],
                      );
                    });
                  },
                  choice: widget.question[widget.questionIndex].options[index],
                  isSelected: widget
                      .question[widget.questionIndex]
                      .selectedAnswers
                      .contains(
                        widget.question[widget.questionIndex].options[index],
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
