import 'package:quiz_app/constants/assets.dart';

class Question {
  final String question;
  final List<String> options;
  Set<String> selectedAnswers = {};
  final List<String> correctAnswers;
  final String image;
  final bool isMultiSelect;

  Question({
    required this.isMultiSelect,
    required this.image,
    required this.question,
    required this.options,
    required this.correctAnswers,
  });

  bool checkAnswer() {
    return selectedAnswers.length == correctAnswers.length &&
        selectedAnswers.containsAll(correctAnswers);
  }

  num calculateScore() {
    return checkAnswer() ? 1 : 0;
  }
}

class QuestionsManger {
  final List<Question> questions = questionList;

  num calculateTotalScore() {
    num total = 0;
    for (var question in questions) {
      total += question.calculateScore();
    }
    return total;
  }

  void updateQuestionAnswer(int index, String answer) {
    if (questions[index].isMultiSelect) {
      if (questions[index].selectedAnswers.contains(answer)) {
        questions[index].selectedAnswers.remove(answer);
      } else {
        questions[index].selectedAnswers.add(answer);
      }
    } else {
      questions[index].selectedAnswers.clear();
      questions[index].selectedAnswers.add(answer);
    }
  }
}

List<Question> questionList = [
  Question(
    image: Assets.imageQindex,
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    correctAnswers: ['Strongly satisfied'],
    isMultiSelect: false,
  ),
  Question(
    image: Assets.imageQ2Index,
    question: 'What vitamins do you take?',
    options: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
    correctAnswers: ['Vitamin D3', 'Zinc'],
    isMultiSelect: true,
  ),
  Question(
    image: Assets.imageQ3Index,
    question: 'Which mineral is important for bone health?',
    options: ['Iron', 'Magnesium', 'Calcium', 'Potassium'],
    correctAnswers: ['Calcium', 'Magnesium'],
    isMultiSelect: true,
  ),
  Question(
    image: Assets.imageQ4Index,
    question: 'What is the main source of energy for the body?',
    options: ['Proteins', 'Fats', 'Vitamins', 'Carbohydrates'],
    correctAnswers: ['Carbohydrates'],
    isMultiSelect: false,
  ),
];
