import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final double sizeFont;
  final String city;

  const CityWidget({
    super.key,
    required this.sizeFont,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 18,
        ),
        SizedBox(
          width: size.width * 0.015,
        ),
        Text(
          city.toUpperCase(),
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: sizeFont,
              ),
        ),
      ],
    );
  }
}
