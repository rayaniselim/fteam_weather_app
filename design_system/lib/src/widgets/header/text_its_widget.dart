import 'package:flutter/material.dart';

import '../../../design_system.dart';

class TextItsWidget extends StatelessWidget {
  final double sizeDescription;
  final String description;

  const TextItsWidget({
    super.key,
    required this.sizeDescription,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: sizeDescription,
            color: LightColors.primaryColor,
          ),
    );
  }
}
