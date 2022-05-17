import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String scoreField;
  final int score;

  const CustomCard({
    Key? key,
    required this.scoreField,
    required this.score,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(widget.scoreField), Text(widget.score.toString())],
        ),
      ),
    );
  }
}
