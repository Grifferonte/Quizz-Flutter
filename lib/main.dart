// Library
import 'package:flutter/material.dart';

// Views
import 'view/homePage.dart';
import 'package:quizz/view/quizzPage.dart';

void main() {
  runApp(const AppRouter());
}

class AppRouter extends StatelessWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quizz Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/Quizz': (context) => QuizzPage(),
        });
  }
}
