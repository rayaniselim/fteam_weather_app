import 'package:flutter/material.dart';

import '../../../../../design_system.dart';

class ComponentsHoursWeb extends StatelessWidget {
  final List list;

  const ComponentsHoursWeb({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list
          .map(
            (element) => CardForecastDayWeb(
              image: Image.asset(
                Images.chuvaBranca,
                height: size.height * 0.05,
                width: size.width * 0.05,
              ),
              textDay: element.day,
              textTemperature: element.temperature,
              textWind: 'Wind',
              list: const [],
              textKmWind: element.wind,
            ),
          )
          .toList(),
    );
  }
}
