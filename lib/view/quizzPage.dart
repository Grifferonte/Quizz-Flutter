// Libraries
import 'package:flutter/material.dart';
import 'package:quizz/view/customWidgets/customImage.dart';

// Views
import '../model/Question.dart';
import '../model/Quizz.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPage();
}

class _QuizzPage extends State<QuizzPage> {
  static Quizz quizz = Quizz(<Question>[
    Question(1, 'images/bird.jpg', 'Il s\'agit d\'un oiseau ?', true),
    Question(2, 'images/cat.jpg', 'Il s\'agit d\'un chien ?', false),
    Question(3, 'images/flower.jpg', 'Il s\'agit d\'un arbre ?', false),
    Question(4, 'images/sea.jpg', 'Il s\'agit de la mer ?', true),
    Question(5, 'images/butterfly.jpg', 'Il s\'agit d\'un papillon ?', true)
  ]);

  int index = 0;
  int score = 0;

  Widget displayDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Réponse fausse !'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Votre score est de ${score}'),
        ],
      ),
      actions: <Widget>[
        new OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
            if (index >= quizz.questions.length - 1) {
              Navigator.pushNamed(context, '/', arguments: score);
            } else {
              setState(() {
                index++;
              });
            }
          },
          child: const Text('Close'),
        ),
      ],
    );
  }

  void CheckState(bool rep) {
    if (quizz.questions[index].getResponse != rep) {
      showDialog(
        context: context,
        builder: (BuildContext context) => displayDialog(context),
      );
    } else {
      if (index >= quizz.questions.length - 1) {
        score++;
        Navigator.pushNamed(context, '/', arguments: score);
      } else {
        setState(() {
          score++;
          index++;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(quizz.questions[index].getIndex.toString()),
        ),
        body: Column(
          children: [
            CustomImage(imgLabel: quizz.questions[index].getImage),
            Text('Question ${quizz.questions[index].getIndex}'),
            Text(quizz.questions[index].getQuestion),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () => {CheckState(true)},
                      child: const Text('VRAI'),
                    ),
                    OutlinedButton(
                      onPressed: () => {CheckState(false)},
                      child: const Text('FAUX'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
