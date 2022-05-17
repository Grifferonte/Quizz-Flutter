import 'package:flutter/material.dart';
import 'package:quizz/controler/Player.dart';
import 'package:quizz/view/customWidgets/homeButton.dart';
import 'package:quizz/view/customWidgets/customCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Player player = Player(0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomCard(scoreField: 'Last Score', score: player.lastsScore),
              CustomCard(scoreField: 'Best Score', score: player.bestScore),
            ],
          ),
          Row(
            children: const [
              HomeButton(label: 'Démarrer le Quizz', route: '/Quizz'),
            ],
          )
        ],
      ),
    );
  }
}
