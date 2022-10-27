import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  final double size;

  const TemperatureWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: '24',
        style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: size),
        children: <InlineSpan>[
          WidgetSpan(
            alignment: PlaceholderAlignment.top,
            child: Text(
              '°',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
    );
  }
}
