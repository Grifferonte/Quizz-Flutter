class Question {
  late int index;
  late String image;
  late String question;
  late bool response;

  Question(this.index, this.image, this.question, this.response);

  int get getIndex => index;
  set setIndex(int newIndex) => index = newIndex;

  String get getImage => image;
  set setImage(String newImg) => image = newImg;

  String get getQuestion => question;
  set setQuestion(String newQst) => question = newQst;

  bool get getResponse => response;
  set setResponse(bool newRep) => response = newRep;
}
