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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list
          .map(
            (element) => CardForecastDayWeb(
              // image: Images.chuvaBranca,
              /// TODO:   erro, pede uma ImageProvider
              image: 'assets/images/chuva_branca.png',
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
