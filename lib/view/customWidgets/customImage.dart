import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  final String imgLabel;

  const CustomImage({
    Key? key,
    required this.imgLabel,
  }) : super(key: key);

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imgLabel,
      width: 300,
      height: 500,
    );
  }
}
