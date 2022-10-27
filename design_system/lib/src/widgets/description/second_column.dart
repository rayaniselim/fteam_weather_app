import 'package:flutter/material.dart';

class SecondColumn extends StatelessWidget {
  double? size1;
  double? size2;
  SecondColumn({
    super.key,
    required this.size1,
    required this.size2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '11km',
          style:
              Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size1),
          textAlign: TextAlign.center,
        ),
        Text(
          'Visibility',
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: size2),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
