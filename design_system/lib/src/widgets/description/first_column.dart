import 'package:flutter/material.dart';

class FirstColumn extends StatefulWidget {
  const FirstColumn({super.key});

  @override
  State<FirstColumn> createState() => _FirstColumnState();
}

class _FirstColumnState extends State<FirstColumn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '40%',
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          Text(
            'Humidity',
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
