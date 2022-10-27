import 'package:flutter/material.dart';

class TextItsWidget extends StatelessWidget {
  final double size;

  const TextItsWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      "it's Sunny",
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size),
    );
  }
}
