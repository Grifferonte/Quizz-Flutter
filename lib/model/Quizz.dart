import 'Question.dart';

class Quizz {
  late List<Question> questions;
  Quizz(this.questions);

  Question getQuestion(int index) => questions[index];

  void setQuestion(int index, Question newQuestion) =>
      questions[index] = newQuestion;
}
