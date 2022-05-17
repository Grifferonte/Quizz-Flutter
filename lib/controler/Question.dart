import 'package:flutter/cupertino.dart';

class Question {
  late int num;
  late String image;
  late String question;
  late bool response;

  Question(this.num, this.image, this.question, this.response);

  String get currentImage => image;
  void set currentImage(String newImg) => image = newImg;

  String get currentQuestion => question;
  void set currentQuestion(String newQst) => question = newQst;

  bool get currentResponse => response;
  void set currentResponse(bool newRep) => response = newRep;
}
