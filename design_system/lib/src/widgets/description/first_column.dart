import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  double? size1;
  double? size2;
  FirstColumn({
    required this.size1,
    required this.size2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '40%',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontSize: size1),
            textAlign: TextAlign.center,
          ),
          Text(
            'Humidity',
            style:
                Theme.of(context).textTheme.caption!.copyWith(fontSize: size2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
