import 'package:flutter/material.dart';

class TextItsWidget extends StatelessWidget {
  final double size;
  final String description;

  const TextItsWidget(
      {super.key, required this.size, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      // "it's Sunny",
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size),
    );
  }
}
