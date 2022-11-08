import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final double size;
  final String city;

  const CityWidget({
    super.key,
    required this.size,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          city.toUpperCase(),
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: size,
              ),
        ),
      ],
    );
  }
}
