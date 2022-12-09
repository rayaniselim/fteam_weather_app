import 'package:flutter/material.dart';

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
            style: theme
                .textTheme
                .subtitle1!
                .copyWith(fontSize: sizeNumber),
            textAlign: TextAlign.center,
          ),
          Text(
            textDescription!,
            style: theme
                .textTheme
                .caption!
                .copyWith(fontSize: sizeDescription),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
