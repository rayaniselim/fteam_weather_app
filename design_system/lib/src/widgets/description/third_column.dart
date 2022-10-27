import 'package:flutter/material.dart';

class ThirdColumn extends StatelessWidget {
  double? size1;
  double? size2;
  ThirdColumn({
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
          '10km/h',
          style:
              Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size1),
          textAlign: TextAlign.center,
        ),
        Text(
          'Wind',
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: size2),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
