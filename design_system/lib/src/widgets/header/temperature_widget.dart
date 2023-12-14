import 'package:flutter/material.dart';

import '../../../design_system.dart';

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
    return Text(
      textAlign: TextAlign.left,
      temperature,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontSize: size,
            color: LightColors.primaryColor,
          ),
    );
  }
}
