import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 18,
        ),
        Text(
          ' cidade',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
