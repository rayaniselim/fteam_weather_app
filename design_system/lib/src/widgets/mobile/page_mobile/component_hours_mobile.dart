import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class ComponentsHoursMobile extends StatelessWidget {
  final List<ForecastModel> forecastList;

  const ComponentsHoursMobile({
    required this.forecastList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: forecastList
            .map(
              (element) => HoursWidgetMobile(
                textDay: element.day,
                image: 'assets/images/chuva.png',
                fontSizeHour: 12,
                textTemperature: element.temperature,
                textWind: element.wind,
                fontSizeTemperature: 36,
                fontSizeBolinha: 26,
              ),
            )
            .toList(),
      ),
    );
  }
}
