import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class ColumnDescriptionMobile extends StatelessWidget {
  final double sizeNumber;
  final double sizeDescription;
  final String textNumber;
  final String? textDescription;

  const ColumnDescriptionMobile({
    super.key,
    required this.sizeNumber,
    required this.sizeDescription,
    required this.textNumber,
    this.textDescription,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textNumber,
            style: theme.textTheme.titleMedium!.copyWith(
              fontSize: sizeNumber,
              color: LightColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            textDescription!,
            style: theme.textTheme.bodySmall!.copyWith(
              fontSize: sizeDescription,
              color: LightColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
