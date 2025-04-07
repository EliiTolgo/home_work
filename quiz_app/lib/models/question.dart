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
