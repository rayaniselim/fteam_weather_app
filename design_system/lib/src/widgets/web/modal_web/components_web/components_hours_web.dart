import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../../../../../design_system.dart';

class ComponentsHoursWeb extends StatelessWidget {
  final List<ForecastModel> forecastList;

  const ComponentsHoursWeb({
    required this.forecastList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: forecastList
          .map(
            (element) => CardForecastDayWeb(
              // TODO static const
              image: 'assets/images/chuva_branca.png',
              textDay: element.day,
              textTemperature: element.temperature,
              textWind: 'Wind',
              forecastsList: const [],
              textKmWind: element.wind,
            ),
          )
          .toList(),
    );
  }
}
