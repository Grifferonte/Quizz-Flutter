import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  final String label;
  final String route;

  const HomeButton({
    Key? key,
    required this.label,
    required this.route,
  }) : super(key: key);

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Text(widget.label),
    );
  }
}
