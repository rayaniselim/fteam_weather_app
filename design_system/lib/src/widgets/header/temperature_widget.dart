import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  final double size;
  final String temperature;

  const TemperatureWidget({
    super.key,
    required this.size,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: temperature,
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
