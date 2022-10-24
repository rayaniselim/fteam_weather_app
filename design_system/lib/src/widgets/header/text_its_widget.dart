import 'package:flutter/material.dart';

class TextItsWidget extends StatelessWidget {
  const TextItsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "it's Sunny",
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
