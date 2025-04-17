import 'package:quiz_app/constants/assets.dart';

class Question {
  final String question;
  final List<String> options;
  String? answer;
  final String correctAnswer;
  final String image;

  Question({
    required this.image,
    required this.question,
    required this.options,
    this.answer,
    required this.correctAnswer,
  });

  bool checkAnswer() {
    return answer == correctAnswer;
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
}

List<Question> questionList = [
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
  Question(
    image: Assets.imageQ3Index,
    question: 'Which mineral is important for bone health?',
    options: ['Iron', 'Magnesium', 'Calcium', 'Potassium'],
    correctAnswer: 'Calcium',
  ),
  Question(
    image: Assets.imageQ4Index,
    question: 'What is the main source of energy for the body?',
    options: ['Proteins', 'Fats', 'Vitamins', 'Carbohydrates'],
    correctAnswer: 'Carbohydrates',
  ),
];
