// Libraries
import 'package:flutter/material.dart';
import 'package:quizz/model/Player.dart';

// Views
import 'package:quizz/view/customWidgets/homeButton.dart';
import 'package:quizz/view/customWidgets/customCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

Player player = Player(0, 0);

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final arg = ModalRoute.of(context)!.settings.arguments as int;
      setState(() {
        player.lastScore = arg;
        if (player.getLastScore > player.getBestScore) {
          player.bestScore = player.getLastScore;
        }
      });
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quizz'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(scoreField: 'Last Score ', score: player.lastScore),
                CustomCard(scoreField: 'Best Score ', score: player.bestScore),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                HomeButton(label: 'Démarrer le Quizz', route: '/Quizz'),
              ],
            )
          ],
        ));
  }
}
