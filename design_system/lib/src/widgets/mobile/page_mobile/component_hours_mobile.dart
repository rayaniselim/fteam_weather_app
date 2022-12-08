import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class ComponentsHoursMobile extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const ComponentsHoursMobile({
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(itemCount, (index) {
          return itemBuilder(context, index);
        })
        
        
        // forecastList
        //     .map(
        //       (element) => HoursWidgetMobile(
        //         textDay: element.day,
        //         // TODO static const
        //         image: 'assets/images/chuva.png',
        //         fontSizeDay: 14,
        //         textTemperature: element.temperature,
        //         textWind: element.wind,
        //         fontSizeTemperature: 36,
        //         fontSizeBolinha: 26,
        //       ),
        //     )
        //     .toList(),
      ),
    );
  }
}
